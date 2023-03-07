.class public Lorg/telegram/ui/Components/Forum/ForumUtilities;
.super Ljava/lang/Object;
.source "ForumUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$36IuJgYeNEU_p43HrC7szhiI8X8(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->lambda$switchAllFragmentsInStackToForum$0(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ij78UDavPzRaJzjxD0MGTKAz16A(Lorg/telegram/ui/TopicsFragment;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->lambda$switchAllFragmentsInStackToForum$1(Lorg/telegram/ui/TopicsFragment;)V

    return-void
.end method

.method public static applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V
    .locals 11

    .line 261
    iget v0, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    neg-long v1, v1

    iget v3, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v10

    if-nez v10, :cond_1

    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 269
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 270
    new-instance p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v0

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget v7, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget v8, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    iget v9, v10, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/ChatActivity;->setThreadMessages(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;IIILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method

.method public static applyTopicToMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 5

    .line 333
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 336
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    neg-long v1, v1

    iget-object v3, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->topicIconDrawable:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    instance-of v2, v2, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    if-eqz v2, :cond_1

    .line 338
    aget-object p0, p0, v1

    check-cast p0, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;->setColor(I)V

    :cond_1
    return-void
.end method

.method public static createActionTextWithTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/messenger/MessageObject;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 278
    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    const-string v3, "%s"

    if-eqz v2, :cond_1

    .line 279
    sget p1, Lorg/telegram/messenger/R$string;->TopicWasCreatedAction:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v3, p1, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 281
    :cond_1
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;

    if-eqz v2, :cond_b

    .line 282
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;

    .line 283
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v4

    .line 286
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    move-object v2, v0

    goto :goto_0

    .line 289
    :cond_2
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    move-object v2, p1

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 293
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 295
    iget-object p1, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 298
    :goto_1
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_6

    .line 299
    iget-boolean p0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;->hidden:Z

    if-eqz p0, :cond_5

    sget p0, Lorg/telegram/messenger/R$string;->TopicHidden2:I

    goto :goto_2

    :cond_5
    sget p0, Lorg/telegram/messenger/R$string;->TopicShown2:I

    :goto_2
    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_6
    and-int/lit8 v3, v2, 0x4

    const-string v4, "%1$s"

    const-string v5, "%2$s"

    if-eqz v3, :cond_8

    .line 302
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;->closed:Z

    if-eqz v1, :cond_7

    sget v1, Lorg/telegram/messenger/R$string;->TopicWasClosedAction:I

    goto :goto_3

    :cond_7
    sget v1, Lorg/telegram/messenger/R$string;->TopicWasReopenedAction:I

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v5, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 303
    invoke-static {v4, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_8
    and-int/lit8 p0, v2, 0x1

    if-eqz p0, :cond_9

    and-int/lit8 p0, v2, 0x2

    if-eqz p0, :cond_9

    .line 306
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    .line 307
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;->icon_emoji_id:J

    iput-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    .line 308
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    .line 309
    sget v1, Lorg/telegram/messenger/R$string;->TopicWasRenamedToAction2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v5, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 310
    invoke-static {v4, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_9
    and-int/lit8 p0, v2, 0x1

    if-eqz p0, :cond_a

    .line 313
    sget p0, Lorg/telegram/messenger/R$string;->TopicWasRenamedToAction:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageAction;->title:Ljava/lang/String;

    invoke-static {v5, p0, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 314
    invoke-static {v4, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_a
    and-int/lit8 p0, v2, 0x2

    if-eqz p0, :cond_b

    .line 317
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;-><init>()V

    .line 318
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicEdit;->icon_emoji_id:J

    iput-wide v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const-string v1, ""

    .line 319
    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    .line 320
    sget v1, Lorg/telegram/messenger/R$string;->TopicWasIconChangedToAction:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v5, v1, p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 321
    invoke-static {v4, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method public static createGeneralTopicDrawable(Landroid/content/Context;FI)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;-><init>(Landroid/content/Context;FI)V

    return-object v0
.end method

.method public static createSmallTopicDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 162
    new-instance v0, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;-><init>(I)V

    .line 163
    new-instance p1, Lorg/telegram/ui/Components/LetterDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Components/LetterDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/LetterDrawable;->setTitle(Ljava/lang/String;)V

    .line 166
    new-instance p0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p0, v0, p1, v2, v2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 167
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    return-object p0
.end method

.method public static createTopicDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 152
    new-instance v0, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Forum/ForumBubbleDrawable;-><init>(I)V

    .line 153
    new-instance p1, Lorg/telegram/ui/Components/LetterDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lorg/telegram/ui/Components/LetterDrawable;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/LetterDrawable;->setTitle(Ljava/lang/String;)V

    .line 156
    new-instance p0, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {p0, v0, p1, v3, v3}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 157
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    return-object p0
.end method

.method public static createTopicDrawable(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_color:I

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 209
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;
    .locals 10

    .line 213
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 214
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_b

    .line 215
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 216
    iget v1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/16 v2, 0x21

    const-string v3, " "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_4

    .line 218
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    const-string v7, "chat_inMenu"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    :goto_0
    invoke-static {v1, v6, v7}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FI)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object v1

    const/16 v6, 0xe

    if-nez p1, :cond_1

    .line 219
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    :goto_1
    if-nez p1, :cond_2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    :goto_2
    invoke-virtual {v1, v5, v5, v7, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz p2, :cond_3

    .line 222
    aput-object v1, p2, v5

    .line 224
    :cond_3
    new-instance p1, Landroid/text/style/ImageSpan;

    const/4 p2, 0x2

    invoke-direct {p1, v1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, p1, v5, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    nop

    goto/16 :goto_4

    .line 226
    :cond_4
    iget-wide v6, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_6

    .line 227
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 229
    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v6, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const v1, 0x3f733333    # 0.95f

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    :goto_3
    invoke-direct {p2, v6, v7, v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v0, p2, v5, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 230
    iput-boolean v4, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    const/4 p1, 0x7

    .line 231
    iput p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    goto :goto_4

    .line 233
    :cond_6
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 234
    invoke-static {p0}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p2, :cond_7

    .line 236
    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/CombinedDrawable;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, p2, v5

    .line 238
    :cond_7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    const v6, 0x3f266666    # 0.65f

    mul-float p2, p2, v6

    float-to-int p2, p2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v6

    float-to-int v6, v7

    invoke-virtual {v1, v5, v5, p2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    instance-of p2, v1, Lorg/telegram/ui/Components/CombinedDrawable;

    if-eqz p2, :cond_8

    move-object p2, v1

    check-cast p2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/ui/Components/LetterDrawable;

    if-eqz v6, :cond_8

    .line 240
    invoke-virtual {p2}, Lorg/telegram/ui/Components/CombinedDrawable;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/LetterDrawable;

    const v6, 0x3f333333    # 0.7f

    iput v6, p2, Lorg/telegram/ui/Components/LetterDrawable;->scale:F

    :cond_8
    if-eqz p1, :cond_9

    .line 243
    new-instance p2, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setSize(I)V

    .line 245
    invoke-virtual {v0, p2, v5, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 247
    :cond_9
    new-instance p1, Landroid/text/style/ImageSpan;

    invoke-direct {p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, v5, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 250
    :goto_4
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 251
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 252
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_a
    return-object v0

    :cond_b
    const-string p0, "DELETED"

    return-object p0
.end method

.method public static isTopicCreateMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 329
    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$switchAllFragmentsInStackToForum$0(Lorg/telegram/ui/ChatActivity;)V
    .locals 1

    .line 373
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {p0}, Lorg/telegram/ui/TopicsFragment;->prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$switchAllFragmentsInStackToForum$1(Lorg/telegram/ui/TopicsFragment;)V
    .locals 1

    .line 389
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p0, v0}, Lorg/telegram/ui/TopicsFragment;->switchToChat(Z)V

    :cond_0
    return-void
.end method

.method public static openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V
    .locals 9

    if-eqz p0, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 175
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "chat_id"

    .line 177
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "message_id"

    if-eqz p4, :cond_1

    .line 180
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 181
    :cond_1
    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    if-nez v2, :cond_2

    .line 183
    iget v2, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    :cond_2
    :goto_0
    iget v1, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->unread_count:I

    const-string v2, "unread_count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "historyPreloaded"

    const/4 v2, 0x0

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 188
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_3

    .line 190
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v3

    iget v5, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    invoke-virtual {v3, p1, p2, v5}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 193
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->topicStartMessage:Lorg/telegram/tgnet/TLRPC$Message;

    move-object v8, p1

    goto :goto_1

    :cond_3
    move-object v8, p3

    :goto_1
    if-nez v0, :cond_4

    return-void

    .line 199
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p2

    invoke-direct {p1, p2, v0, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget v5, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget v6, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_inbox_max_id:I

    iget v7, v8, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->read_outbox_max_id:I

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/ChatActivity;->setThreadMessages(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;IIILorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    if-eqz p4, :cond_5

    .line 203
    iput p4, v1, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    .line 205
    :cond_5
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public static setTopicIcon(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, p1, v0, v0, v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->setTopicIcon(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static setTopicIcon(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    if-eqz p1, :cond_6

    if-nez p0, :cond_0

    goto :goto_2

    .line 57
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 58
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f400000    # 0.75f

    const-string p3, "actionBarDefaultIcon"

    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FI)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 60
    :cond_1
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const-wide/16 v3, 0x0

    cmp-long p4, v0, v3

    if-eqz p4, :cond_5

    .line 61
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object p4, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p4, :cond_2

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    invoke-virtual {p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v2

    cmp-long p4, v0, v2

    if-eqz p4, :cond_6

    .line 63
    :cond_2
    new-instance p4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p3, :cond_3

    const/16 p3, 0xb

    goto :goto_0

    :cond_3
    const/16 p3, 0xa

    :goto_0
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    invoke-direct {p4, p3, v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    if-eqz p2, :cond_4

    .line 64
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const-string p2, "actionBarDefaultTitle"

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    invoke-virtual {p4, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 65
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    goto :goto_2

    .line 68
    :cond_5
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    .line 69
    invoke-static {p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static switchAllFragmentsInStackToForum(JLorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 6

    .line 365
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    .line 366
    instance-of v0, p2, Lorg/telegram/ui/ChatActivity;

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_1

    .line 367
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    .line 368
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v3

    neg-long v3, v3

    cmp-long v5, v3, p0

    if-nez v5, :cond_1

    .line 369
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v3, :cond_1

    .line 370
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 371
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    new-instance v3, Lorg/telegram/ui/Components/Forum/ForumUtilities$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Forum/ForumUtilities$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity;)V

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V

    .line 384
    :cond_1
    :goto_0
    instance-of v0, p2, Lorg/telegram/ui/TopicsFragment;

    if-eqz v0, :cond_3

    .line 385
    check-cast p2, Lorg/telegram/ui/TopicsFragment;

    .line 386
    invoke-virtual {p2}, Lorg/telegram/ui/TopicsFragment;->getDialogId()J

    move-result-wide v3

    neg-long v3, v3

    cmp-long v0, v3, p0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-nez p0, :cond_3

    .line 387
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 388
    new-instance p0, Lorg/telegram/ui/Components/Forum/ForumUtilities$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Forum/ForumUtilities$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/TopicsFragment;)V

    invoke-static {p0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    .line 394
    invoke-virtual {p2, p0}, Lorg/telegram/ui/TopicsFragment;->switchToChat(Z)V

    :cond_3
    :goto_1
    return-void
.end method
