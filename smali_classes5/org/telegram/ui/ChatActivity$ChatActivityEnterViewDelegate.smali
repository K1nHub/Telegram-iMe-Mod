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

.method public static synthetic $r8$lambda$noo_GeV_ACb7YUkRQ4c9z1Bbdus(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lambda$openReaction$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$t73sgjJvOlDNoXf5V1LvdfesooI(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lambda$onMessageSend$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 3408
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$1;)V
    .locals 0

    .line 3408
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;-><init>(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private synthetic lambda$onMessageEditEnd$4()V
    .locals 2

    .line 3780
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->hideFieldPanel(Z)V

    return-void
.end method

.method private static synthetic lambda$onMessageSend$1(Ljava/lang/Boolean;)V
    .locals 0

    .line 3543
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/SharedConfig;->setOpenForwardingOptionsAutomaticallyEnabled(Z)V

    .line 3544
    sget p0, Lorg/telegram/messenger/R$string;->auto_open_forwarding_options_hint:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->longToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onStickersExpandedChange$5()V
    .locals 2

    .line 3896
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3897
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onTextSelectionChanged$2(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3642
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

    .line 3683
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

    .line 3443
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 3444
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public bottomPanelTranslationYChanged(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 3936
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$3302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3938
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiPadding()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$10402(Lorg/telegram/ui/ChatActivity;F)F

    .line 3939
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, p1

    :cond_2
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$10502(Lorg/telegram/ui/ChatActivity;F)F

    .line 3940
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3941
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3942
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->panelAnimationInProgress()Z

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$10400(Lorg/telegram/ui/ChatActivity;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setEmojiOffset(ZF)V

    .line 3944
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getTopViewTranslation()F

    move-result v0

    add-float/2addr p1, v0

    .line 3945
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3946
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 3948
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10600(Lorg/telegram/ui/ChatActivity;)V

    .line 3949
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 3950
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/ChatActivity;->updateTextureViewPosition(ZZ)V

    .line 3951
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3952
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$10700(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public didPressAttachButton()V
    .locals 2

    .line 3833
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3834
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 3836
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9300(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public didPressedSmartBotsButton()V
    .locals 3

    .line 3416
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$700(Lorg/telegram/ui/ChatActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setSmartBotsResponse(Ljava/util/List;Z)V

    return-void
.end method

.method public getContentViewHeight()I
    .locals 1

    .line 3475
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSendAsPeers()Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;
    .locals 1

    .line 3485
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_channels_sendAsPeers;

    move-result-object v0

    return-object v0
.end method

.method public hasForwardingMessages()Z
    .locals 1

    .line 3972
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

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
    .locals 1

    .line 3913
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic isCustomForward()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$isCustomForward(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;)Z

    move-result v0

    return v0
.end method

.method public measureKeyboardHeight()I
    .locals 1

    .line 3480
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    return v0
.end method

.method public needChangeVideoPreviewState(IF)V
    .locals 1

    .line 3861
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3862
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView;->changeVideoPreviewState(IF)V

    :cond_0
    return-void
.end method

.method public needSendTyping()V
    .locals 7

    .line 3730
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8300(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->sendTyping(JIII)Z

    return-void
.end method

.method public needShowMediaBanHint()V
    .locals 1

    .line 3876
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9700(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public needStartRecordAudio(I)V
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3869
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3870
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public synthetic needStartRecordVideo(IZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate$-CC;->$default$needStartRecordVideo(Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;IZI)V

    return-void
.end method

.method public needStartRecordVideo(IZIZ)V
    .locals 1

    .line 3841
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9400(Lorg/telegram/ui/ChatActivity;)V

    .line 3842
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    .line 3846
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera(Z)V

    goto :goto_0

    .line 3848
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InstantCameraView;->showCamera()V

    .line 3849
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 3850
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsSafe()V

    goto :goto_3

    :cond_1
    if-eq p1, v0, :cond_5

    const/4 p4, 0x3

    if-eq p1, p4, :cond_5

    const/4 p4, 0x4

    if-ne p1, p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p3, 0x5

    if-ne p1, p3, :cond_6

    .line 3854
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p3

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/InstantCameraView;->cancel(Z)V

    goto :goto_3

    .line 3852
    :cond_5
    :goto_2
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$9500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lorg/telegram/ui/Components/InstantCameraView;->send(IZI)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onAttachButtonHidden()V
    .locals 2

    .line 3735
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3738
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->isEditTextItemVisibilitySuppressed:Z

    if-nez v0, :cond_1

    .line 3739
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3741
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSlowModeTimer()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3742
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3743
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3745
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3746
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onAttachButtonShow()V
    .locals 2

    .line 3753
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3756
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3757
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3759
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->isEditTextItemVisibilitySuppressed:Z

    if-nez v0, :cond_2

    .line 3760
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3762
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3763
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onAudioVideoInterfaceUpdated()V
    .locals 2

    .line 3930
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10300(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method

.method public onContextMenuClose()V
    .locals 1

    .line 3579
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3580
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->fireUpdate()V

    :cond_0
    return-void
.end method

.method public onContextMenuOpen()V
    .locals 1

    .line 3572
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3573
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_0
    return-void
.end method

.method public onEditTextScroll()V
    .locals 1

    .line 3565
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3566
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    :cond_0
    return-void
.end method

.method public onMessageEditEnd(Z)V
    .locals 4

    .line 3769
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3770
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$5902(Lorg/telegram/ui/ChatActivity;I)I

    .line 3771
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3772
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$6002(Lorg/telegram/ui/ChatActivity;Z)Z

    :cond_0
    if-nez p1, :cond_5

    .line 3776
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p1, :cond_1

    .line 3777
    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    .line 3779
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3780
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V

    const-wide/16 v2, 0x1e

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3783
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3784
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldFocused()V

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v0

    .line 3787
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2, v1, v1, v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAllowStickersAndGifs(ZZZZ)V

    .line 3788
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 3789
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$8600(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3790
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$8602(Lorg/telegram/ui/ChatActivity;I)I

    .line 3792
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;Z)V

    .line 3793
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)V

    .line 3794
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)V

    :cond_5
    return-void
.end method

.method public onMessageSend(Ljava/lang/CharSequence;ZILjava/lang/String;)V
    .locals 10

    .line 3490
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$5800(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 3491
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getBackgroundTop()I

    move-result v1

    invoke-static {p4, v1}, Lorg/telegram/ui/ChatActivity;->access$5902(Lorg/telegram/ui/ChatActivity;I)I

    .line 3492
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)I

    move-result p4

    if-eqz p4, :cond_0

    .line 3493
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4, v0}, Lorg/telegram/ui/ChatActivity;->access$6002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3496
    :cond_0
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 3497
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p4, p4, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p4}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object p4

    invoke-virtual {p4, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p4, 0x0

    if-eqz p3, :cond_5

    .line 3500
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6100(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 3501
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p4}, Lorg/telegram/ui/ChatActivity;->access$6102(Lorg/telegram/ui/ChatActivity;I)I

    :cond_2
    if-eqz p1, :cond_3

    .line 3504
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6108(Lorg/telegram/ui/ChatActivity;)I

    .line 3506
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3507
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$6112(Lorg/telegram/ui/ChatActivity;I)I

    .line 3509
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, p4}, Lorg/telegram/ui/ChatActivity;->access$6200(Lorg/telegram/ui/ChatActivity;Z)V

    .line 3511
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ForwardingMessagesParams;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3513
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ForwardingMessagesParams;->getSelectedMessages(Ljava/util/ArrayList;)V

    .line 3514
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v0

    goto :goto_0

    :cond_6
    move v2, p4

    .line 3515
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v3

    move v4, p4

    .line 3516
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 3517
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_7

    .line 3518
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5, v3}, Lorg/telegram/messenger/MessageObject;->peersEqual(Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$Peer;)Z

    move-result v5

    if-nez v5, :cond_7

    move v2, p4

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 3525
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)V

    .line 3526
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3527
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/16 v5, 0x55

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3531
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-nez v2, :cond_b

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3532
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->replyToForumTopic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1, v0}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v1

    :goto_3
    if-eqz v1, :cond_b

    .line 3534
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1, p4}, Lorg/telegram/messenger/MediaDataController;->cleanDraft(JIZ)V

    .line 3539
    :cond_b
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object p4

    const-string v1, "OK"

    if-nez p4, :cond_c

    if-eqz p1, :cond_c

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p4, v0}, Lorg/telegram/ui/ChatActivity;->getCombineMessagesTimeLeft(Z)I

    move-result p4

    if-eqz p4, :cond_c

    .line 3540
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    sget p4, Lorg/telegram/messenger/R$string;->combine_messages_alert_message:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    sget p4, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, p4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    sget-object v9, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda5;

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_4

    .line 3541
    :cond_c
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object p4

    if-eqz p4, :cond_d

    sget-boolean p4, Lorg/telegram/messenger/SharedConfig;->forwardingOptionsHintShown:Z

    if-eqz p4, :cond_d

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$Global;->isOpenForwardingOptionsAutomaticallyEnabled()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/SharedConfig;->hasPreferenceKey(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_d

    .line 3542
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    sget p4, Lorg/telegram/messenger/R$string;->auto_open_forwarding_options_alert_message:I

    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    sget p4, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, p4, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    sget-object v9, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda6;->INSTANCE:Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda6;

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 3548
    :cond_d
    :goto_4
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p4, p2, p3, v0}, Lorg/telegram/ui/ChatActivity;->hideFieldPanel(ZIZ)V

    .line 3549
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 3550
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/EmojiView;->onMessageSend()V

    .line 3553
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->didPressTranscribeButtonEnough()Z

    move-result p2

    if-nez p2, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    if-eqz p1, :cond_11

    :goto_5
    const/4 p1, 0x5

    .line 3554
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge v0, p1, :cond_11

    .line 3555
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_10

    .line 3556
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p2

    if-eqz p2, :cond_10

    :cond_f
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 3557
    invoke-static {p1}, Lorg/telegram/ui/Components/TranscribeButton;->showOffTranscribe(Lorg/telegram/messenger/MessageObject;)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public onPreAudioVideoRecord()V
    .locals 3

    .line 3591
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;ZZ)V

    return-void
.end method

.method public onSendLongClick()V
    .locals 1

    .line 3918
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3919
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintView;->hide()V

    :cond_0
    return-void
.end method

.method public onStickersExpandedChange()V
    .locals 4

    .line 3881
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9800(Lorg/telegram/ui/ChatActivity;)V

    .line 3882
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isStickersExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3883
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$9900(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    .line 3884
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3885
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    goto :goto_0

    .line 3888
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$10000(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 3890
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 3891
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

    .line 3893
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3894
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3895
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

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

    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3899
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    return-void
.end method

.method public onStickersTab(Z)V
    .locals 2

    .line 3824
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9100(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3825
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$9100(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3827
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$9202(Lorg/telegram/ui/ChatActivity;Z)Z

    return-void
.end method

.method public onSwitchRecordMode(Z)V
    .locals 2

    .line 3586
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity;->access$6600(Lorg/telegram/ui/ChatActivity;ZZ)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;Z)V
    .locals 9

    .line 3693
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

    .line 3694
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3695
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

    .line 3697
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3698
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3699
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$8102(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3701
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

    .line 3703
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1, v2}, Lorg/telegram/ui/ChatActivity;->access$8200(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Z)V

    goto :goto_3

    .line 3705
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;Ljava/lang/CharSequence;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatActivity;->access$8102(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3714
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->WEB_URL:Ljava/util/regex/Pattern;

    if-nez p2, :cond_7

    const-wide/16 v0, 0xbb8

    goto :goto_2

    :cond_7
    const-wide/16 v0, 0x3e8

    :goto_2
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3717
    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    if-eqz p1, :cond_9

    .line 3718
    invoke-virtual {p1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->cancelAllAnimations()V

    .line 3720
    :cond_9
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->dismissAll()V

    return-void
.end method

.method public onTextSelectionChanged(II)V
    .locals 11

    .line 3607
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3610
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 3611
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3612
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Components/SuggestEmojiView;->onTextSelectionChanged(II)V

    :cond_1
    sub-int v1, p2, p1

    const-wide/16 v2, 0xdc

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-lez v1, :cond_5

    .line 3615
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 3616
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setTag(Ljava/lang/Object;)V

    .line 3618
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 3619
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v7, v9}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3620
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3621
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)V

    .line 3622
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3623
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto :goto_0

    :cond_3
    new-array v1, v6, [F

    .line 3625
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v9

    aput v5, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3626
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3627
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3628
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3642
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3643
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 3647
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$7702(Lorg/telegram/ui/ChatActivity;I)I

    .line 3648
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$7802(Lorg/telegram/ui/ChatActivity;I)I

    goto/16 :goto_1

    .line 3650
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3651
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setTag(Ljava/lang/Object;)V

    .line 3652
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getVisibility()I

    move-result p1

    if-eq p1, v8, :cond_9

    .line 3653
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz p1, :cond_8

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-gez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v7, v9}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result p1

    if-nez p1, :cond_8

    .line 3654
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    invoke-virtual {p1, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 3656
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasText()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSlowModeTimer()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3657
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3658
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    invoke-virtual {p1, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto :goto_1

    .line 3660
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3661
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    invoke-virtual {p1, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto :goto_1

    :cond_8
    new-array p1, v6, [F

    aput v5, p1, v9

    .line 3664
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    aput p2, p1, v7

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3665
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3666
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3667
    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3683
    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3684
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onTextSpansChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 3725
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$8200(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onTopViewFullyShown()V
    .locals 2

    .line 3461
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ForwardingMessagesParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3462
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$5600(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_0
    return-void
.end method

.method public onTrendingStickersShowed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3963
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    .line 3964
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$11000(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 3966
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method

.method public onUpdateSlowModeButton(Landroid/view/View;ZLjava/lang/CharSequence;)V
    .locals 1

    .line 3596
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZLjava/lang/CharSequence;)V

    .line 3597
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3598
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3599
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3600
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onWindowSizeChanged(I)V
    .locals 4

    const/16 v0, 0x48

    .line 3800
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_0

    .line 3801
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$8902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3802
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 3803
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3806
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$8902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3807
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 3808
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3812
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isPopupShowing()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$9002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3814
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

    .line 3815
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lastSize:I

    if-eq v0, p1, :cond_3

    .line 3816
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$5902(Lorg/telegram/ui/ChatActivity;I)I

    .line 3817
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$6002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3819
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->lastSize:I

    return-void
.end method

.method public openReaction()V
    .locals 11

    .line 3438
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/smedialink/utils/helper/reaction/ReactionHelper;->checkReactionWork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3439
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lcom/smedialink/utils/helper/reaction/ReactionHelper;->showReactionActivationAlert(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 3441
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3442
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v10, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

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

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;)V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;-><init>(JLjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ReactionDelegate;)V

    invoke-static {v1, v10}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_1
    return-void
.end method

.method public openScheduledMessages()V
    .locals 1

    .line 3925
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$10200(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public prepareMessageSending()V
    .locals 2

    .line 3957
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$10802(Lorg/telegram/ui/ChatActivity;Z)Z

    return-void
.end method

.method public scrollToSendingMessage()V
    .locals 10

    .line 3905
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->getSendingMessageId(J)I

    move-result v4

    if-eqz v4, :cond_0

    .line 3907
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
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move-object/from16 v20, p4

    .line 3451
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 3452
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->path:Ljava/lang/String;

    iget-object v4, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->thumbPath:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 3453
    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v6

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getReplyMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v11, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->entities:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    move-object v12, v5

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v14, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->ttl:I

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 3455
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v15

    iget-object v1, v1, Lorg/telegram/messenger/SendMessagesHelper$SendingMediaInfo;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object/from16 v16, v1

    const/4 v5, 0x0

    const-string v10, ""

    const/4 v13, 0x0

    const/16 v19, 0x0

    .line 3451
    invoke-static/range {v2 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    return-void
.end method

.method public sendGif(IJLjava/lang/String;)V
    .locals 2

    .line 3433
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2900(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatActivity;->access$5000(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$BotInlineResult;JLjava/lang/String;)V

    return-void
.end method

.method public showGifsViewer(Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/util/ArrayList;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 3426
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/ChatActivity;->access$2902(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3427
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityEnterViewDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 3428
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    move v4, p3

    move-object v7, p1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IIZLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    return-void
.end method
