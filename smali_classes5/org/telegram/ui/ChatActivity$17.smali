.class Lorg/telegram/ui/ChatActivity$17;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$KXVkow5Z0GP2LAw7hiq9h3TlBVI(Lorg/telegram/ui/ChatActivity$17;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$17;->lambda$onItemClick$0(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 3091
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(I)V
    .locals 7

    .line 3114
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    return-void
.end method


# virtual methods
.method public hasDoubleTap(Landroid/view/View;I)Z
    .locals 6

    .line 3147
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object p2

    .line 3148
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string v2, "animated_"

    .line 3149
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v1

    .line 3152
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-ltz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_4

    .line 3153
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    .line 3154
    :cond_3
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    :goto_1
    invoke-static {v4, p2}, Lorg/telegram/messenger/ChatObject;->reactionIsAvailable(Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)Z

    move-result v2

    :cond_4
    if-eqz v2, :cond_6

    .line 3156
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez p2, :cond_5

    goto :goto_2

    .line 3159
    :cond_5
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3160
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isEditing()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0x10

    if-eq p2, v0, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$4300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result p1

    if-nez p1, :cond_6

    move v1, v3

    :cond_6
    :goto_2
    return v1
.end method

.method public onDoubleTap(Landroid/view/View;IFF)V
    .locals 10

    .line 3165
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_0

    .line 3168
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3169
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 3170
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isSecretMedia()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isExpiredStory()Z

    move-result p2

    if-nez p2, :cond_b

    iget p2, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v0, 0x1b

    if-ne p2, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 3173
    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->removeCurrent(Z)V

    .line 3174
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getDoubleTapReaction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v2, "animated_"

    .line 3180
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_6

    .line 3181
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-ltz p1, :cond_3

    move p2, v3

    :cond_3
    if-nez p2, :cond_4

    .line 3182
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_4

    .line 3183
    invoke-static {p1, v0}, Lorg/telegram/messenger/ChatObject;->reactionIsAvailable(Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)Z

    move-result p2

    :cond_4
    if-nez p2, :cond_5

    return-void

    .line 3188
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Ljava/lang/String;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ChatActivity;->selectReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    goto :goto_0

    .line 3190
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_b

    .line 3191
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    .line 3194
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-ltz p1, :cond_8

    move p2, v3

    :cond_8
    if-nez p2, :cond_9

    .line 3195
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_9

    .line 3196
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ChatObject;->reactionIsAvailable(Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/lang/String;)Z

    move-result p2

    :cond_9
    if-nez p2, :cond_a

    return-void

    .line 3201
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/ChatActivity;->selectReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/view/View;IFF)V
    .locals 6

    .line 3094
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3097
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$2902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 3098
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3099
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/ChatActivity;->isInsideContainer:Z

    if-eqz p1, :cond_1

    return-void

    .line 3102
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3103
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 3104
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p3

    const-string v0, "dialog_id"

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3105
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide p3

    const-string v0, "topic_id"

    invoke-virtual {p1, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "type"

    .line 3106
    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3107
    new-instance p3, Lorg/telegram/ui/CalendarActivity;

    invoke-direct {p3, p1, v2, p2}, Lorg/telegram/ui/CalendarActivity;-><init>(Landroid/os/Bundle;II)V

    .line 3108
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 3111
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionSetSameChatWallPaper;

    if-eqz v3, :cond_3

    .line 3112
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getReplyMsgId()I

    move-result p1

    .line 3113
    new-instance p2, Lorg/telegram/ui/ChatActivity$17$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatActivity$17$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$17;I)V

    const-wide/16 p3, 0x10

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 3118
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ltz v0, :cond_4

    goto :goto_0

    .line 3129
    :cond_4
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_6

    .line 3130
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3131
    iget v3, v2, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_6

    .line 3132
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->toggleChannelRecommendations()V

    .line 3133
    iput-boolean v1, v2, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 3134
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->forceResetMessageObject()V

    .line 3135
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    if-ltz p2, :cond_5

    .line 3137
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    :cond_5
    return-void

    .line 3142
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFF)Z

    return-void

    .line 3120
    :cond_7
    :goto_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p2, :cond_9

    .line 3121
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isSelected(Lorg/telegram/messenger/MessageObject;)Z

    move-result p2

    if-eqz p2, :cond_8

    return-void

    .line 3124
    :cond_8
    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->isInsideBackground(FF)Z

    move-result p2

    xor-int/lit8 v2, p2, 0x1

    .line 3126
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$17;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1, v2, p3, p4}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZFF)V

    return-void
.end method
