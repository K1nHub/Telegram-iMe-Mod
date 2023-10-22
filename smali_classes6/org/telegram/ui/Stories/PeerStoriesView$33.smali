.class Lorg/telegram/ui/Stories/PeerStoriesView$33;
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
.method public static synthetic $r8$lambda$9N-5vioyamW-KdAjJMI1DHScXnc(Lorg/telegram/ui/Stories/PeerStoriesView$33;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/PeerStoriesView$33;->lambda$onReactionClickedInternal$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$RKmiEhUqzEmH0AqHnvgaVaatsyA(Lorg/telegram/ui/Stories/PeerStoriesView$33;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/PeerStoriesView$33;->lambda$onReactionClickedInternal$0(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView;)V
    .locals 0

    .line 5408
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReactionClickedInternal$0(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 5416
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$33;->onReactionClickedInternal(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    return-void
.end method

.method private synthetic lambda$onReactionClickedInternal$1()V
    .locals 1

    .line 5465
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$7700(Lorg/telegram/ui/Stories/PeerStoriesView;)V

    return-void
.end method


# virtual methods
.method public synthetic drawBackground()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate$-CC;->$default$drawBackground(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)Z

    move-result v0

    return v0
.end method

.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V
    .locals 1

    .line 5480
    iget-object p6, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p6}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p6

    neg-float p4, p4

    neg-float p5, p5

    iget-object p7, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 5481
    invoke-virtual {p7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p7

    int-to-float p7, p7

    add-float/2addr p7, p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 5482
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p5

    .line 5480
    invoke-virtual {p6, p4, p5, p7, v0}, Lorg/telegram/ui/Components/BitmapShaderTools;->setBounds(FFFF)V

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_0

    .line 5484
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p4

    iget-object p4, p4, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5485
    iget-object p4, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 5487
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {p3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6400(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/Components/BitmapShaderTools;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/BitmapShaderTools;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5488
    iget-object p3, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/PeerStoriesView;->inputBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public needEnterText()Z
    .locals 1

    .line 5494
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->needEnterText()Z

    move-result v0

    return v0
.end method

.method public onEmojiWindowDismissed()V
    .locals 2

    .line 5499
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->delegate:Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/ui/Stories/PeerStoriesView$Delegate;->requestAdjust(Z)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V
    .locals 6

    xor-int/lit8 v5, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 5411
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$33;->onReactionClickedInternal(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    return-void
.end method

.method onReactionClickedInternal(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v15, p2

    if-eqz p5, :cond_0

    .line 5415
    iget-object v7, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    new-instance v8, Lorg/telegram/ui/Stories/PeerStoriesView$33$$ExternalSyntheticLambda1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/PeerStoriesView$33$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$33;Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    invoke-static {v7, v8}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4200(Lorg/telegram/ui/Stories/PeerStoriesView;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    .line 5421
    iget-object v2, v15, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 5422
    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 5423
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 5424
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v3, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v10, v3, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v11, 0x0

    .line 5426
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v13, v3, v1

    iget-object v3, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v14, v3, v1

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 5427
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3900(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v7, v2

    move-object/from16 v12, p1

    move-object v3, v15

    move-object/from16 v15, p2

    invoke-direct/range {v7 .. v18}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    goto :goto_0

    :cond_1
    move-object v3, v15

    .line 5430
    new-instance v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 5431
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v4, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v10, v4, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v11, 0x0

    .line 5433
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v13, v4, v1

    iget-object v4, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v14, v4, v1

    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    .line 5434
    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3900(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v16

    const/16 v17, 0x2

    const/16 v18, 0x1

    move-object v7, v2

    move-object/from16 v12, p1

    move-object/from16 v15, p2

    invoke-direct/range {v7 .. v18}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;IIZ)V

    .line 5437
    :goto_0
    sput-object v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->currentOverlay:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 5438
    iget-object v1, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    sget v4, Lorg/telegram/messenger/R$id;->parent_tag:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 5439
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 5440
    iput-boolean v5, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->started:Z

    .line 5441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->startTime:J

    .line 5443
    iget-object v1, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5444
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3900(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v1, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getEmojiAnimatedSticker(Ljava/lang/CharSequence;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 5445
    iget-object v1, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    iget-object v3, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v3

    invoke-static {v1, v3, v4, v2}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 5446
    iget-object v2, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v2, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iput-object v3, v1, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 5447
    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3900(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_1

    .line 5449
    :cond_2
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3900(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v1

    iget-wide v4, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v1, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 5450
    invoke-static {v1, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5451
    iget-object v5, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5400(Lorg/telegram/ui/Stories/PeerStoriesView;)J

    move-result-wide v7

    invoke-static {v4, v7, v8, v2}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    .line 5452
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    .line 5453
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 5454
    iget-wide v7, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    iput-wide v7, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 5455
    iput v0, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 5456
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 5457
    iget-object v0, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5458
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v3, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->currentStory:Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;

    iget-object v3, v3, Lorg/telegram/ui/Stories/PeerStoriesView$StoryItemHolder;->storyItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iput-object v3, v2, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToStoryItem:Lorg/telegram/tgnet/TLRPC$StoryItem;

    .line 5459
    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3900(Lorg/telegram/ui/Stories/PeerStoriesView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    move-object v0, v1

    .line 5462
    :goto_1
    iget-object v1, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v2, v1, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$6300(Lorg/telegram/ui/Stories/PeerStoriesView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ReactionSent:I

    const-string v3, "ReactionSent"

    .line 5463
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ViewInChat:I

    const-string v4, "ViewInChat"

    .line 5464
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/PeerStoriesView$33$$ExternalSyntheticLambda0;

    invoke-direct {v4, v6}, Lorg/telegram/ui/Stories/PeerStoriesView$33$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/PeerStoriesView$33;)V

    .line 5462
    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/16 v1, 0x1388

    .line 5466
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 5467
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5468
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissWithAlpha()V

    .line 5470
    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/Stories/PeerStoriesView$33;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->closeKeyboardOrEmoji()Z

    return-void
.end method
