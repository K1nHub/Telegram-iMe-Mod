.class Lorg/telegram/ui/Stories/PeerStoriesView$26;
.super Ljava/lang/Object;
.source "PeerStoriesView.java"

# interfaces
.implements Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;->checkReactionsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/PeerStoriesView;


# direct methods
.method public static synthetic $r8$lambda$M5xpHEYBKtXSFD5PsTiAqTjBQdo(Lorg/telegram/ui/Stories/PeerStoriesView$26;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$26;->lambda$onReactionClicked$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 4326
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReactionClicked$0()V
    .locals 1

    .line 4374
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7100(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 3

    .line 4389
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object v0

    neg-float p4, p4

    neg-float p5, p5

    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 4390
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 4391
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p5

    .line 4389
    invoke-virtual {v0, p4, p5, v1, v2}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_0

    .line 4393
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 4394
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 4396
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 4397
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public needEnterText()Z
    .locals 1

    .line 4403
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->needEnterText()Z

    move-result v0

    return v0
.end method

.method public onEmojiWindowDismissed()V
    .locals 2

    .line 4408
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    const/4 v14, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    .line 4330
    iget-object v2, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4331
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 4332
    new-instance v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 4333
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v6, 0x0

    .line 4335
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v7, v4, v1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v8, v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 4336
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v1, v15

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    goto :goto_0

    .line 4339
    :cond_0
    new-instance v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 4340
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v5, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v6, 0x0

    .line 4342
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v7, v4, v1

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v8, v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 4343
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object v1, v15

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    .line 4346
    :goto_0
    sput-object v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 4347
    iget-object v1, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    sget v2, Lorg/telegram/messenger/R$id;->parent_tag:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 4348
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4349
    iput-boolean v3, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    .line 4350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v15, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    .line 4352
    iget-object v1, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4353
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 4354
    iget-object v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v2}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    .line 4355
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iput-object v4, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 4356
    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_1

    .line 4358
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    iget-wide v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 4359
    invoke-static {v1, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4360
    iget-object v4, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v4

    invoke-static {v3, v4, v5, v2}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    .line 4361
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    .line 4362
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 4363
    iget-wide v5, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 4364
    iput v14, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 4365
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 4366
    iget-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4367
    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v4, v4, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iput-object v4, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 4368
    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3400(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 4371
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5500(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ReactionSent:I

    const-string v4, "ReactionSent"

    .line 4372
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->ViewInChat:I

    const-string v5, "ViewInChat"

    .line 4373
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/PeerStoriesView$26$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$26$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$26;)V

    .line 4371
    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    const/16 v2, 0x1388

    .line 4375
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 4376
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4377
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    .line 4379
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView$26;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->closeKeyboardOrEmoji()Z

    return-void
.end method
