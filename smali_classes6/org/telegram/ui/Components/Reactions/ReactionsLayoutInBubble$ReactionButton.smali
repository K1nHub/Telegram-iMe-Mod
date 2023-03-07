.class public Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
.super Ljava/lang/Object;
.source "ReactionsLayoutInBubble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReactionButton"
.end annotation


# instance fields
.field public animateFromWidth:I

.field public animateFromX:I

.field public animateFromY:I

.field animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field animatedEmojiDrawableColor:I

.field public animationType:I

.field avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

.field backgroundColor:I

.field public choosen:Z

.field public choosenOrder:I

.field count:I

.field countText:Ljava/lang/String;

.field counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

.field public drawImage:Z

.field drawingImageRect:Landroid/graphics/Rect;

.field public fromBackgroundColor:I

.field public fromTextColor:I

.field public height:I

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field isSelected:Z

.field private final isSmall:Z

.field public key:Ljava/lang/String;

.field lastDrawnBackgroundColor:I

.field lastDrawnTextColor:I

.field public lastImageDrawn:Z

.field reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

.field private final reactionCount:Lorg/telegram/tgnet/TLRPC$ReactionCount;

.field public realCount:I

.field serviceBackgroundColor:I

.field serviceTextColor:I

.field textColor:I

.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

.field users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V
    .locals 9

    .line 529
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    .line 507
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 531
    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    .line 533
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez p2, :cond_1

    .line 534
    new-instance p2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p2}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 536
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 537
    new-instance p2, Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget-object v2, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v3, 0x0

    invoke-direct {p2, v2, v1, v3}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;-><init>(Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    .line 539
    :cond_2
    iput-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reactionCount:Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 540
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 541
    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 542
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    iput p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    .line 543
    iget-boolean v2, p3, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    .line 544
    iput p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    .line 545
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen_order:I

    iput p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosenOrder:I

    .line 546
    iput-boolean p4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSmall:Z

    .line 547
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz p4, :cond_3

    .line 548
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    goto :goto_0

    .line 549
    :cond_3
    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz p4, :cond_6

    .line 550
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    .line 554
    :goto_0
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->countText:Ljava/lang/String;

    .line 555
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p4, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 556
    iget-boolean p2, p3, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    .line 557
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput-boolean v1, p2, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateVisibility:Z

    .line 558
    iput-boolean v0, p2, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->shortFormat:Z

    .line 560
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 p3, 0x3

    if-eqz p2, :cond_5

    .line 561
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object p4, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz p4, :cond_4

    .line 562
    iget p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v7, :cond_5

    .line 565
    iget-object p1, v7, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string p4, "windowBackgroundGray"

    invoke-static {p1, p4, p2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;F)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v5

    .line 566
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, v7, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    const/4 v8, 0x1

    const-string v4, "40_40_lastreactframe"

    const-string v6, "webp"

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 568
    :cond_4
    iget-wide v2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_5

    .line 569
    new-instance p2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {p2, p3, p1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 573
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/16 p2, 0x1a

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 p4, 0x64

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setSize(II)V

    .line 574
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$300()Landroid/text/TextPaint;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    .line 575
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 576
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setType(I)V

    .line 577
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput p3, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    return-void

    .line 552
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;
    .locals 0

    .line 486
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reactionCount:Lorg/telegram/tgnet/TLRPC$ReactionCount;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z
    .locals 0

    .line 486
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSmall:Z

    return p0
.end method

.method private drawImage(Landroid/graphics/Canvas;F)V
    .locals 8

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 686
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawableColor:I

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    if-eq v2, v3, :cond_1

    .line 687
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    iput v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawableColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 689
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    const/4 v4, 0x1

    if-gt v1, v4, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v5

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-static {v1, v5, v6, v7}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->isPlaying(IJLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    if-nez v1, :cond_9

    .line 690
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ImageReceiver;

    if-eqz v1, :cond_7

    .line 693
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p2, v5

    if-eqz v5, :cond_4

    .line 697
    invoke-virtual {v1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    cmpg-float p2, p2, v3

    if-gtz p2, :cond_6

    .line 699
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 700
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 703
    :cond_4
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_6

    .line 705
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result p2

    const v2, 0x3da3d70a    # 0.08f

    sub-float/2addr p2, v2

    cmpg-float v2, p2, v3

    if-gtz v2, :cond_5

    .line 707
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 708
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->animatedReactions:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 710
    :cond_5
    invoke-virtual {v1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 712
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    const/4 v2, 0x1

    .line 715
    :cond_6
    :goto_3
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result p2

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr p2, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v6

    div-float/2addr v6, v5

    sub-float/2addr v3, v6

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v6

    mul-float v6, v6, v5

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v7

    mul-float v7, v7, v5

    invoke-virtual {v1, p2, v3, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 716
    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_4

    :cond_7
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_8

    .line 719
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 721
    :cond_8
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastImageDrawn:Z

    goto :goto_5

    .line 723
    :cond_9
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 724
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 725
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastImageDrawn:Z

    :goto_5
    return-void
.end method

.method private updateColors(F)V
    .locals 4

    .line 680
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTextColor:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    .line 681
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromBackgroundColor:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 759
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onAttachedToWindow()V

    .line 762
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 763
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public detach()V
    .locals 2

    .line 768
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 771
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v0, :cond_1

    .line 772
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDetachedFromWindow()V

    .line 774
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 775
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 582
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 583
    :goto_0
    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSmall:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 584
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 585
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    const/16 v5, 0xe

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v2, v6, v6, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 586
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 587
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 588
    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage(Landroid/graphics/Canvas;F)V

    return-void

    .line 592
    :cond_1
    iget-boolean v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    const-string v7, "chat_outReactionButtonBackground"

    const-string v8, "chat_inReactionButtonBackground"

    if-eqz v5, :cond_6

    .line 593
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v7

    goto :goto_1

    :cond_2
    move-object v5, v8

    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 594
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "chat_outReactionButtonTextSelected"

    goto :goto_2

    :cond_3
    const-string v5, "chat_inReactionButtonTextSelected"

    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    .line 595
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v7, v8

    :goto_3
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    .line 596
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "chat_outBubble"

    goto :goto_4

    :cond_5
    const-string v5, "chat_inBubble"

    :goto_4
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    goto :goto_7

    .line 598
    :cond_6
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "chat_outReactionButtonText"

    goto :goto_5

    :cond_7
    const-string v5, "chat_inReactionButtonText"

    :goto_5
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v9, v9, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    .line 599
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    move-object v7, v8

    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 600
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e1fbe77    # 0.156f

    mul-float v7, v7, v8

    float-to-int v7, v7

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 601
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v7, "chat_serviceText"

    invoke-static {v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    .line 602
    iput v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    .line 604
    :goto_7
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->updateColors(F)V

    .line 605
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$300()Landroid/text/TextPaint;

    move-result-object v5

    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 606
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$400()Landroid/graphics/Paint;

    move-result-object v5

    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v7, v3, v5

    if-eqz v7, :cond_9

    .line 610
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$300()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$300()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/TextPaint;->getAlpha()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 611
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$400()Landroid/graphics/Paint;

    move-result-object v7

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$400()Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v3

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_9
    if-eqz v4, :cond_a

    .line 614
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 617
    :cond_a
    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    cmpl-float v8, v2, v5

    if-eqz v8, :cond_b

    .line 618
    iget v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    int-to-float v7, v7

    mul-float v7, v7, v2

    .line 619
    iget v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromWidth:I

    int-to-float v8, v8

    sub-float v9, v5, v2

    mul-float v8, v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 621
    :cond_b
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v7, v7

    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10, v7, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 622
    iget v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    .line 623
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v12, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    cmpl-float v12, v12, v10

    if-lez v12, :cond_d

    const-string v12, "paintChatActionBackground"

    .line 624
    invoke-static {v11, v12}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$500(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v11

    .line 625
    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    .line 626
    invoke-virtual {v11}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    .line 627
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    int-to-float v15, v13

    mul-float v15, v15, v3

    .line 628
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    mul-float v15, v15, v10

    float-to-int v10, v15

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v10, v14

    mul-float v10, v10, v3

    .line 629
    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v15, v15, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    mul-float v10, v10, v15

    float-to-int v10, v10

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 630
    invoke-virtual {v1, v8, v7, v7, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 631
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    invoke-static {v10}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$600(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 632
    invoke-virtual {v1, v8, v7, v7, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 634
    :cond_c
    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 635
    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 637
    :cond_d
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v11, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->drawServiceShaderBackground:F

    cmpg-float v11, v11, v5

    if-gez v11, :cond_e

    if-eqz p4, :cond_e

    .line 638
    iget-object v10, v10, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v10, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundDrawable(Z)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 640
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v1, v8, v7, v7, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 643
    :cond_e
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$400()Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v1, v8, v7, v7, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/16 v7, 0x8

    const/16 v8, 0x14

    if-eqz v4, :cond_10

    .line 647
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v10, :cond_f

    const/16 v6, 0x18

    .line 648
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/4 v10, 0x6

    .line 649
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    .line 650
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v4, v10}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_8

    .line 652
    :cond_f
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    .line 653
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    .line 654
    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v6, v10

    .line 656
    :goto_8
    iget v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    sub-int/2addr v10, v6

    int-to-float v10, v10

    div-float/2addr v10, v9

    float-to-int v9, v10

    .line 657
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    add-int v12, v11, v6

    add-int/2addr v6, v9

    invoke-virtual {v10, v11, v9, v12, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 658
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 659
    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage(Landroid/graphics/Canvas;F)V

    .line 662
    :cond_10
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v6, 0x2

    if-eqz v4, :cond_12

    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-nez v9, :cond_11

    iget v4, v4, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_12

    .line 663
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 664
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 665
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 669
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v4, :cond_13

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v4, 0xa

    .line 671
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 672
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/AvatarsDrawable;->setAlpha(F)V

    .line 673
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setTransitionProgress(F)V

    .line 674
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    return-void
.end method

.method public setUsers(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .line 730
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 732
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$700()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->parentView:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const-wide/16 v2, 0xfa

    .line 735
    iput-wide v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionDuration:J

    .line 736
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v2, 0x14

    .line 737
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setSize(I)V

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const/16 v2, 0x64

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    iput v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    const/16 v2, 0x16

    .line 740
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setAvatarsTextSize(I)V

    .line 742
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->attached:Z

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onAttachedToWindow()V

    :cond_1
    const/4 v0, 0x0

    .line 745
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 749
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->currentAccount:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(Z)V

    :cond_4
    return-void
.end method
