.class Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatActivityEnterViewDelegate"
.end annotation


# instance fields
.field isEditTextItemVisibilitySuppressed:Z

.field lastSize:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$-qxoZBsC3DdbAViJMgds749D-YQ(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lambda$openReaction$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$6Yj29ectMv4w0RjAG0ekO4QKgaw(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lambda$onStickersExpandedChange$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$6apypb8fdToSvvL5sfC1Abj-X0w(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lambda$onTextSelectionChanged$2(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9YjPz0qKoLsw1H7qPmvElhj1RCc(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lambda$onMessageSend$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KzUqJG_dynLmo90pH3YLBr6uh8Y(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lambda$onMessageEditEnd$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$c7qBHt3oM84FBapCtZ6pegxekmQ(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lambda$onTextSelectionChanged$3(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 3206
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$1;)V
    .locals 0

    .line 3206
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;-><init>(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private synthetic lambda$onMessageEditEnd$4()V
    .locals 2

    .line 3596
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->hideFieldPanel(Z)V

    return-void
.end method

.method private synthetic lambda$onMessageSend$1(Ljava/lang/Boolean;)V
    .locals 1

    .line 3340
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setOpenForwardingOptionsAutomaticallyEnabled(Z)V

    .line 3341
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->auto_open_forwarding_options_hint:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UndoView;->showInfo(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onStickersExpandedChange$5()V
    .locals 2

    .line 3715
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3716
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onTextSelectionChanged$2(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3443
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    return-void
.end method

.method private static synthetic lambda$onTextSelectionChanged$3(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3490
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    return-void
.end method

.method private synthetic lambda$openReaction$0()V
    .locals 2

    .line 3231
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 3232
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public bottomPanelTranslationYChanged(F)V
    .locals 4

    .line 3761
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FormattingTextController;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/FormattingPanelType;->ALTERNATIVE_WEB:Lcom/iMe/fork/enums/FormattingPanelType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 3762
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFormattingMessagesContainerWebVisible()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 3763
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 3764
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3765
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->setEnabledView(Z)V

    .line 3766
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;->updateColors()V

    goto :goto_0

    .line 3768
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const/16 v0, 0x3c

    .line 3769
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    goto :goto_0

    .line 3772
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/ui/formatting_messages/FormattingMessagesWeb;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_3

    .line 3777
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$2902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3779
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$9802(Lorg/telegram/ui/ChatActivity;F)F

    .line 3780
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, p1

    :cond_5
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$9902(Lorg/telegram/ui/ChatActivity;F)F

    .line 3781
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3782
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3783
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$9800(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setEmojiOffset(ZF)V

    .line 3785
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTopViewTranslation()F

    move-result v0

    add-float/2addr p1, v0

    .line 3786
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3787
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 3789
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)V

    .line 3790
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 3791
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 3792
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3793
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public didPressAttachButton()V
    .locals 2

    .line 3649
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3650
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 3652
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public getContentViewHeight()I
    .locals 1

    .line 3268
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getReplyQuote()Lorg/telegram/ui/ChatActivity$ReplyQuote;
    .locals 1

    .line 3828
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ReplyQuote;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$getReplyToStory(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getSendAsPeers()Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;
    .locals 1

    .line 3278
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    move-result-object v0

    return-object v0
.end method

.method public hasForwardingMessages()Z
    .locals 1

    .line 3813
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScheduledMessages()Z
    .locals 3

    .line 3732
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isForum(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-nez v0, :cond_0

    return v1

    .line 3735
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public measureKeyboardHeight()I
    .locals 1

    .line 3273
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    return v0
.end method

.method public needChangeVideoPreviewState(IF)V
    .locals 1

    .line 3680
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3681
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->changeVideoPreviewState(IF)V

    :cond_0
    return-void
.end method

.method public needSendTyping()V
    .locals 8

    .line 3546
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/MessagesController;->sendTyping(JJII)Z

    return-void
.end method

.method public needShowMediaBanHint()V
    .locals 1

    .line 3695
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9100(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public needStartRecordAudio(I)V
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3688
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3689
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public synthetic needStartRecordVideo(IZII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$needStartRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;IZII)V

    return-void
.end method

.method public needStartRecordVideo(IZIIZ)V
    .locals 2

    .line 3664
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8900(Lorg/telegram/ui/ChatActivity;)V

    .line 3665
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3667
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p1

    invoke-virtual {p1, v0, p5}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera(ZZ)V

    .line 3668
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 3669
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsSafe()V

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

    .line 3673
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p3

    if-ne p1, p2, :cond_3

    move v0, p5

    :cond_3
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/InstantCameraView;->cancel(Z)V

    goto :goto_1

    .line 3671
    :cond_4
    :goto_0
    iget-object p5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p5}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lorg/telegram/ui/Components/InstantCameraView;->send(IZII)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onAttachButtonHidden()V
    .locals 2

    .line 3551
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3554
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->isEditTextItemVisibilitySuppressed:Z

    if-nez v0, :cond_1

    .line 3555
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3557
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSlowModeTimer()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3558
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3559
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3561
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3562
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onAttachButtonShow()V
    .locals 2

    .line 3569
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3572
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3573
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3575
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->isEditTextItemVisibilitySuppressed:Z

    if-nez v0, :cond_2

    .line 3576
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3578
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3579
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onAudioVideoInterfaceUpdated()V
    .locals 2

    .line 3755
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method

.method public onContextMenuClose()V
    .locals 1

    .line 3376
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3377
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->fireUpdate()V

    :cond_0
    return-void
.end method

.method public onContextMenuOpen()V
    .locals 1

    .line 3369
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3370
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_0
    return-void
.end method

.method public onEditTextScroll()V
    .locals 1

    .line 3362
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3363
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_0
    return-void
.end method

.method public onKeyboardRequested()V
    .locals 1

    .line 3818
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->checkAdjustResize()V

    return-void
.end method

.method public onMessageEditEnd(Z)V
    .locals 4

    .line 3585
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3586
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$5102(Lorg/telegram/ui/ChatActivity;I)I

    .line 3587
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3588
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$5202(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_0
    if-nez p1, :cond_5

    .line 3592
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    .line 3593
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    .line 3595
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_2

    .line 3596
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V

    const-wide/16 v2, 0x1e

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3599
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3600
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldFocused()V

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v0

    .line 3603
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v1, v1, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZZZ)V

    .line 3604
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$8000(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 3605
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8000(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3606
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$8002(Lorg/telegram/ui/ChatActivity;I)I

    .line 3608
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;Z)V

    .line 3609
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$8200(Lorg/telegram/ui/ChatActivity;)V

    .line 3610
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)V

    :cond_5
    return-void
.end method

.method public onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V
    .locals 9

    .line 3283
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 3284
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v1

    invoke-static {p4, v1}, Lorg/telegram/ui/ChatActivity;->access$5102(Lorg/telegram/ui/ChatActivity;I)I

    .line 3285
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)I

    move-result p4

    if-eqz p4, :cond_0

    .line 3286
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4, v0}, Lorg/telegram/ui/ChatActivity;->access$5202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3289
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 3290
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p4

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p4, 0x0

    if-eqz p3, :cond_5

    .line 3293
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 3294
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p4}, Lorg/telegram/ui/ChatActivity;->access$5302(Lorg/telegram/ui/ChatActivity;I)I

    :cond_2
    if-eqz p1, :cond_3

    .line 3297
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5308(Lorg/telegram/ui/ChatActivity;)I

    .line 3299
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3300
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$5312(Lorg/telegram/ui/ChatActivity;I)I

    .line 3302
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p4}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;Z)V

    .line 3304
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams$Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v1, v1, Lorg/telegram/messenger/MessagePreviewParams;->quote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

    if-nez v1, :cond_9

    .line 3305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3306
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    iget-object v2, v2, Lorg/telegram/messenger/MessagePreviewParams;->forwardMessages:Lorg/telegram/messenger/MessagePreviewParams$Messages;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagePreviewParams$Messages;->getSelectedMessages(Ljava/util/ArrayList;)V

    .line 3307
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v0

    goto :goto_0

    :cond_6
    move v2, p4

    .line 3308
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v3

    move v4, p4

    .line 3309
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 3310
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_7

    .line 3311
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5, v3}, Lorg/telegram/messenger/MessageObject;->peersEqual(Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    move p4, v2

    :goto_2
    if-eqz p4, :cond_9

    .line 3318
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p4

    sget v1, Lorg/telegram/messenger/R$raw;->hint_swipe_reply:I

    sget v2, Lorg/telegram/messenger/R$string;->SwipeToReplyHint:I

    .line 3321
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->SwipeToReplyHintMessage:I

    .line 3322
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3319
    invoke-virtual {p4, v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p4

    .line 3324
    invoke-virtual {p4}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const v2, 0x3fe66666    # 1.8f

    .line 3325
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3326
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 3327
    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 3330
    :cond_9
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p4}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p4

    if-eqz p4, :cond_b

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, p4, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-nez v1, :cond_b

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object p4

    if-eqz p4, :cond_b

    .line 3331
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz p4, :cond_a

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v1, p4

    goto :goto_3

    :cond_a
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)I

    move-result p4

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p4, v1, v0}, Lorg/telegram/messenger/MessageObject;->getTopicId(ILorg/telegram/tgnet/TLRPC$Message;Z)J

    move-result-wide v1

    :goto_3
    move-wide v6, v1

    const-wide/16 v1, 0x0

    cmp-long p4, v6, v1

    if-eqz p4, :cond_b

    .line 3333
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MediaDataController;->cleanDraft(JJZ)V

    .line 3338
    :cond_b
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->messagePreviewParams:Lorg/telegram/messenger/MessagePreviewParams;

    if-eqz p4, :cond_c

    sget-boolean p4, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    if-eqz p4, :cond_c

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/SharedConfig;->hasPreferenceKey(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_c

    .line 3339
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    sget p4, Lorg/telegram/messenger/R$string;->auto_open_forwarding_options_alert_message:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget p4, Lorg/telegram/messenger/R$string;->OK:I

    const-string v5, "OK"

    invoke-static {v5, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, p4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    new-instance v8, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 3345
    :cond_c
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p4, p2, p3, v0}, Lorg/telegram/ui/ChatActivity;->hideFieldPanel(ZIZ)V

    .line 3346
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 3347
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmojiView;->onMessageSend()V

    .line 3350
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->transcribeAudioTrialWeeklyNumber:I

    if-gtz p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->didPressTranscribeButtonEnough()Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    if-eqz p1, :cond_10

    :goto_4
    const/4 p1, 0x5

    .line 3351
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge v0, p1, :cond_10

    .line 3352
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_f

    .line 3353
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 3354
    invoke-static {p1}, Lorg/telegram/ui/Components/TranscribeButton;->showOffTranscribe(Lorg/telegram/messenger/MessageObject;)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method public onPreAudioVideoRecord()V
    .locals 3

    .line 3388
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;ZZ)V

    return-void
.end method

.method public onSendLongClick()V
    .locals 1

    .line 3740
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3741
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    .line 3743
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3744
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_1
    return-void
.end method

.method public onStickersExpandedChange()V
    .locals 4

    .line 3700
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9200(Lorg/telegram/ui/ChatActivity;)V

    .line 3701
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3702
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    .line 3703
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3704
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    goto :goto_0

    .line 3707
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9400(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 3709
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 3710
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3712
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3713
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3714
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3718
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    return-void
.end method

.method public onStickersTab(Z)V
    .locals 2

    .line 3640
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3641
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3643
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;Z)Z

    return-void
.end method

.method public onSwitchRecordMode(Z)V
    .locals 2

    .line 3383
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;ZZ)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;ZZ)V
    .locals 9

    .line 3500
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->setInputFieldHasText(Z)V

    .line 3501
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3502
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getCursorPosition()I

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    .line 3504
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3505
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3506
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$7202(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3508
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canSendEmbed(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isMessageWebPageSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingCaption()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_5
    if-eqz p2, :cond_6

    .line 3510
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/ChatActivity;->searchLinks(Ljava/lang/CharSequence;Z)V

    goto :goto_3

    .line 3512
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ChatActivity;->checkEditLinkRemoved(Ljava/lang/CharSequence;)V

    .line 3513
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;Ljava/lang/CharSequence;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$7202(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3522
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    if-nez p2, :cond_7

    const-wide/16 v0, 0xbb8

    goto :goto_2

    :cond_7
    const-wide/16 v0, 0x3e8

    :goto_2
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3525
    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    if-eqz p1, :cond_9

    .line 3526
    invoke-virtual {p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->cancelAllAnimations()V

    .line 3528
    :cond_9
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissAll()V

    if-nez p3, :cond_d

    .line 3530
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 3531
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 3532
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7500(Lorg/telegram/ui/ChatActivity;)V

    goto :goto_4

    .line 3534
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7600(Lorg/telegram/ui/ChatActivity;)V

    :cond_d
    :goto_4
    return-void
.end method

.method public onTextSelectionChanged(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3404
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 3407
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 3408
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3409
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Components/SuggestEmojiView;->onTextSelectionChanged(II)V

    :cond_1
    sub-int v4, v2, v1

    const-wide/16 v5, 0x0

    const/16 v9, 0x30

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/16 v13, 0x8

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lez v4, :cond_a

    .line 3413
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/fork/controller/FormattingTextController;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v4

    sget-object v7, Lcom/iMe/fork/enums/FormattingPanelType;->DEFAULT:Lcom/iMe/fork/enums/FormattingPanelType;

    if-eq v4, v7, :cond_4

    .line 3414
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/controller/FormattingTextController;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v3

    sget-object v5, Lcom/iMe/fork/enums/FormattingPanelType;->ALTERNATIVE_WEB:Lcom/iMe/fork/enums/FormattingPanelType;

    if-eq v3, v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFormattingMessagesContainerWebVisible()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v14, v15

    :goto_0
    invoke-virtual {v4, v14}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setShowFormattingButton(Z)V

    goto/16 :goto_1

    .line 3416
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    .line 3417
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setTag(Ljava/lang/Object;)V

    .line 3419
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_9

    .line 3420
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-ne v4, v12, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v7

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v16

    cmp-long v4, v7, v16

    if-eqz v4, :cond_7

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-eqz v4, :cond_6

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v4, v4, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v4, :cond_8

    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-gez v4, :cond_8

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4, v14, v15}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3421
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v3

    invoke-virtual {v3, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3422
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)V

    .line 3423
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3424
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto :goto_1

    :cond_8
    new-array v4, v11, [F

    .line 3426
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v15

    aput v10, v4, v14

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0xdc

    .line 3427
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3428
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3429
    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;

    invoke-direct {v5, v0, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3443
    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3444
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 3448
    :cond_9
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v1}, Lorg/telegram/ui/ChatActivity;->access$6802(Lorg/telegram/ui/ChatActivity;I)I

    .line 3449
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$6902(Lorg/telegram/ui/ChatActivity;I)I

    goto/16 :goto_2

    .line 3452
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFormattingTextController()Lcom/iMe/fork/controller/FormattingTextController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FormattingTextController;->getFormattingPanelType()Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/FormattingPanelType;->DEFAULT:Lcom/iMe/fork/enums/FormattingPanelType;

    if-eq v1, v2, :cond_b

    .line 3453
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3454
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setShowFormattingButton(Z)V

    goto/16 :goto_2

    .line 3457
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 3458
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setTag(Ljava/lang/Object;)V

    .line 3459
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getVisibility()I

    move-result v1

    if-eq v1, v13, :cond_11

    .line 3460
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-ne v1, v12, :cond_c

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v1

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-eqz v1, :cond_e

    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v1, :cond_10

    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-gez v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v14, v15}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v1

    if-nez v1, :cond_10

    .line 3461
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3463
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSlowModeTimer()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3464
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3465
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    invoke-virtual {v1, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto :goto_2

    .line 3467
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3468
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto :goto_2

    :cond_10
    new-array v1, v11, [F

    aput v10, v1, v15

    .line 3471
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v14

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0xdc

    .line 3472
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3473
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3474
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3490
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v2, v3}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3491
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_11
    :goto_2
    return-void
.end method

.method public onTextSpansChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 3541
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->searchLinks(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onTopViewFullyShown()V
    .locals 2

    .line 3249
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->forwardingPreviewView:Lorg/telegram/ui/Components/MessagePreviewView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3250
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$4800(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_0
    return-void
.end method

.method public onTrendingStickersShowed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3804
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    .line 3805
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 3807
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V
    .locals 1

    .line 3393
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZLjava/lang/CharSequence;)V

    .line 3394
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3395
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3396
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3397
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onWindowSizeChanged(I)V
    .locals 4

    const/16 v0, 0x48

    .line 3616
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_0

    .line 3617
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$8302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3618
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3619
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3622
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$8302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3623
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3624
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3628
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$8402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3630
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x10000

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    add-int/2addr p1, v0

    .line 3631
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lastSize:I

    if-eq v0, p1, :cond_3

    .line 3632
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$5102(Lorg/telegram/ui/ChatActivity;I)I

    .line 3633
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$5202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3635
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lastSize:I

    return-void
.end method

.method public onceVoiceAvailable()Z
    .locals 2

    .line 3823
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openReaction()V
    .locals 11

    .line 3226
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/iMe/utils/helper/reaction/ReactionHelper;->checkReactionWork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3227
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lcom/iMe/utils/helper/reaction/ReactionHelper;->showReactionActivationAlert(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 3229
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3230
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v10, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;)V

    invoke-static {v1, v10}, Lorg/telegram/ui/ChatActivity;->access$4700(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_1
    return-void
.end method

.method public openScheduledMessages()V
    .locals 1

    .line 3750
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public prepareMessageSending()V
    .locals 2

    .line 3798
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10202(Lorg/telegram/ui/ChatActivity;Z)Z

    return-void
.end method

.method public scrollToSendingMessage()V
    .locals 10

    .line 3724
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->getSendingMessageId(J)I

    move-result v4

    if-eqz v4, :cond_0

    .line 3726
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    :cond_0
    return-void
.end method

.method public sendEditedSticker(Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;ZILjava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 v22, p4

    .line 3239
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 3240
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 3241
    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v12, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v15, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->editingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v16, v5

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v17, v1

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const-string v21, ""

    .line 3239
    invoke-static/range {v2 .. v22}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/ChatActivity$ReplyQuote;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V
    .locals 7

    .line 3256
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    return-void
.end method

.method public toggleVideoRecordingPause()V
    .locals 1

    .line 3657
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3658
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/InstantCameraView;->togglePause()V

    :cond_0
    return-void
.end method
