.class public Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;
.super Ljava/lang/Object;
.source "ReactionsLayoutInBubble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReactionButton"
.end annotation


# instance fields
.field public animateFromWidth:I

.field public animateFromX:I

.field public animateFromY:I

.field animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field animatedEmojiDrawableColor:I

.field public animationType:I

.field public attached:Z

.field avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

.field backgroundColor:I

.field public choosen:Z

.field public choosenOrder:I

.field public count:I

.field public countText:Ljava/lang/String;

.field public counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

.field private final currentAccount:I

.field public drawImage:Z

.field drawingImageRect:Landroid/graphics/Rect;

.field public fromBackgroundColor:I

.field public fromTextColor:I

.field public height:I

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field isSelected:Z

.field private final isSmall:Z

.field public key:Ljava/lang/String;

.field public lastDrawnBackgroundColor:I

.field public lastDrawnTextColor:I

.field public lastImageDrawn:Z

.field private final parentView:Landroid/view/View;

.field reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

.field private final reactionCount:Lorg/telegram/tgnet/TLRPC$ReactionCount;

.field public realCount:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field serviceBackgroundColor:I

.field serviceTextColor:I

.field textColor:I

.field users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;ILandroid/view/View;Lorg/telegram/tgnet/TLRPC$ReactionCount;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    .line 559
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    .line 591
    iput p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->currentAccount:I

    .line 592
    iput-object p3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    .line 593
    iput-object p6, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz p1, :cond_0

    .line 595
    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    .line 597
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez p1, :cond_1

    .line 598
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 600
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 p6, 0x0

    if-nez p1, :cond_2

    .line 601
    new-instance p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, p3, p6, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;-><init>(Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    .line 603
    :cond_2
    iput-object p4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reactionCount:Lorg/telegram/tgnet/TLRPC$ReactionCount;

    .line 604
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 605
    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 606
    iget p1, p4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    .line 607
    iget-boolean v1, p4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    .line 608
    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    .line 609
    iget p1, p4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen_order:I

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosenOrder:I

    .line 610
    iput-boolean p5, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSmall:Z

    .line 611
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of p5, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz p5, :cond_3

    .line 612
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    goto :goto_0

    .line 613
    :cond_3
    instance-of p5, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz p5, :cond_6

    .line 614
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;->document_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->key:Ljava/lang/String;

    .line 618
    :goto_0
    iget p1, p4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->countText:Ljava/lang/String;

    .line 619
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 620
    iget-boolean p1, p4, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    .line 621
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iput-boolean p6, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->updateVisibility:Z

    .line 622
    iput-boolean v0, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->shortFormat:Z

    .line 624
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p1, :cond_5

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object p3, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 626
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v5, :cond_5

    .line 629
    iget-object p1, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->static_icon:Lorg/telegram/tgnet/TLRPC$Document;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v3

    .line 630
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->center_icon:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    const/4 v6, 0x1

    const-string v2, "40_40_lastreactframe"

    const-string v4, "webp"

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_1

    .line 632
    :cond_4
    iget-wide p3, p1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-eqz p1, :cond_5

    .line 633
    new-instance p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getCacheType()I

    move-result p3

    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide p4, p4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-direct {p1, p3, p2, p4, p5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 637
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/16 p2, 0x1a

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 p3, 0x64

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setSize(II)V

    .line 638
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$300()Landroid/text/TextPaint;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->textPaint:Landroid/text/TextPaint;

    .line 639
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    invoke-virtual {p1, p2, p6}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setCount(IZ)V

    .line 640
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->setType(I)V

    .line 641
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 p2, 0x3

    iput p2, p1, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->gravity:I

    return-void

    .line 616
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Lorg/telegram/tgnet/TLRPC$ReactionCount;
    .locals 0

    .line 538
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->reactionCount:Lorg/telegram/tgnet/TLRPC$ReactionCount;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;)Z
    .locals 0

    .line 538
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSmall:Z

    return p0
.end method

.method private drawImage(Landroid/graphics/Canvas;F)V
    .locals 8

    .line 780
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 781
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawableColor:I

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    if-eq v2, v3, :cond_1

    .line 782
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    iput v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawableColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 784
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->realCount:I

    const/4 v4, 0x1

    if-gt v1, v4, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSelected:Z

    if-nez v1, :cond_9

    .line 785
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 788
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
    move v2, v4

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p2, v5

    if-eqz v5, :cond_4

    .line 792
    invoke-virtual {v1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    cmpg-float p2, p2, v3

    if-gtz p2, :cond_6

    .line 794
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 795
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->removeImageReceiver()V

    goto :goto_3

    .line 798
    :cond_4
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_6

    .line 800
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result p2

    const v2, 0x3da3d70a    # 0.08f

    sub-float/2addr p2, v2

    cmpg-float v2, p2, v3

    if-gtz v2, :cond_5

    .line 802
    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 803
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->removeImageReceiver()V

    goto :goto_2

    .line 805
    :cond_5
    invoke-virtual {v1, p2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 807
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    move v2, v4

    .line 810
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

    mul-float/2addr v6, v5

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v7

    mul-float/2addr v7, v5

    invoke-virtual {v1, p2, v3, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 811
    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_4
    if-eqz v2, :cond_8

    .line 814
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 816
    :cond_8
    iput-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastImageDrawn:Z

    goto :goto_5

    .line 818
    :cond_9
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 819
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 820
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastImageDrawn:Z

    :goto_5
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    const/4 v0, 0x1

    .line 852
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attached:Z

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 856
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v0, :cond_1

    .line 857
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onAttachedToWindow()V

    .line 859
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 860
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public detach()V
    .locals 2

    const/4 v0, 0x0

    .line 865
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attached:Z

    .line 866
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 869
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDetachedFromWindow()V

    .line 872
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 873
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFFFZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 654
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 655
    :goto_0
    iget-boolean v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isSmall:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    .line 656
    invoke-virtual {v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 657
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    float-to-int v2, v2

    float-to-int v3, v3

    const/16 v7, 0xe

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v4, v2, v3, v9, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 658
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 659
    invoke-virtual {v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 660
    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage(Landroid/graphics/Canvas;F)V

    return-void

    .line 664
    :cond_1
    iget-boolean v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->choosen:Z

    if-eqz v7, :cond_6

    .line 665
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v7

    if-eqz v7, :cond_2

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonBackground:I

    goto :goto_1

    :cond_2
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 666
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v7

    if-eqz v7, :cond_3

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonTextSelected:I

    goto :goto_2

    :cond_3
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonTextSelected:I

    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    .line 667
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v7

    if-eqz v7, :cond_4

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonBackground:I

    goto :goto_3

    :cond_4
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    :goto_3
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    .line 668
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v7

    if-eqz v7, :cond_5

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    goto :goto_4

    :cond_5
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    :goto_4
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    goto :goto_7

    .line 670
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v7

    if-eqz v7, :cond_7

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonText:I

    goto :goto_5

    :cond_7
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonText:I

    :goto_5
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    .line 671
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->isOutOwner()Z

    move-result v7

    if-eqz v7, :cond_8

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReactionButtonBackground:I

    goto :goto_6

    :cond_8
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReactionButtonBackground:I

    :goto_6
    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 672
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3e1fbe77    # 0.156f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v7, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    .line 673
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    iget-object v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v7, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    .line 674
    iput v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    .line 676
    :goto_7
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->updateColors(F)V

    .line 677
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$300()Landroid/text/TextPaint;

    move-result-object v7

    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    invoke-virtual {v7, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 678
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$400()Landroid/graphics/Paint;

    move-result-object v7

    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v9, v5, v7

    if-eqz v9, :cond_9

    .line 681
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$300()Landroid/text/TextPaint;

    move-result-object v9

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$300()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/TextPaint;->getAlpha()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 682
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$400()Landroid/graphics/Paint;

    move-result-object v9

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$400()Landroid/graphics/Paint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v5

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_9
    if-eqz v6, :cond_a

    .line 685
    invoke-virtual {v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 688
    :cond_a
    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->width:I

    cmpl-float v10, v4, v7

    if-eqz v10, :cond_b

    .line 689
    iget v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animationType:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    int-to-float v9, v9

    mul-float/2addr v9, v4

    .line 690
    iget v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animateFromWidth:I

    int-to-float v10, v10

    sub-float v11, v7, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 692
    :cond_b
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v9, v9

    add-float/2addr v9, v2

    iget v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    invoke-virtual {v10, v2, v3, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 693
    iget v9, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v9, v9

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    .line 694
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_e

    .line 695
    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v13, "paintChatActionBackground"

    invoke-static {v13, v12}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v12

    .line 696
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v14, "paintChatActionBackgroundDarken"

    invoke-static {v14, v13}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/Paint;

    move-result-object v13

    .line 697
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    .line 698
    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v15

    int-to-float v11, v14

    mul-float/2addr v11, v5

    .line 699
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v16

    mul-float v11, v11, v16

    float-to-int v11, v11

    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v11, v15

    mul-float/2addr v11, v5

    .line 700
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v16

    mul-float v11, v11, v16

    float-to-int v11, v11

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 701
    invoke-virtual {v1, v10, v9, v9, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 702
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v11, :cond_c

    invoke-interface {v11}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->hasGradientService()Z

    move-result v11

    if-eqz v11, :cond_d

    goto :goto_8

    :cond_c
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasGradientService()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 703
    :goto_8
    invoke-virtual {v1, v10, v9, v9, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 705
    :cond_d
    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 706
    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_e
    if-eqz p6, :cond_f

    .line 708
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v11

    cmpg-float v7, v11, v7

    if-gez v7, :cond_f

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    instance-of v11, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v11, :cond_f

    .line 709
    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentBackgroundDrawable(Z)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 711
    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v1, v10, v9, v9, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 714
    :cond_f
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$400()Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v1, v10, v9, v9, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/16 v7, 0x8

    const/16 v9, 0x14

    if-eqz v6, :cond_11

    .line 718
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v10, :cond_10

    const/16 v8, 0x18

    .line 719
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/4 v10, 0x6

    .line 720
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    .line 721
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_9

    .line 723
    :cond_10
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    .line 724
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    .line 725
    invoke-virtual {v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move v8, v10

    .line 727
    :goto_9
    iget v10, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    sub-int/2addr v10, v8

    int-to-float v10, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    float-to-int v10, v10

    .line 728
    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    float-to-int v13, v2

    add-int/2addr v13, v11

    float-to-int v11, v3

    add-int/2addr v11, v10

    add-int v10, v13, v8

    add-int/2addr v8, v11

    invoke-virtual {v12, v13, v11, v10, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 729
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawingImageRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 730
    invoke-direct {v0, v1, v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawImage(Landroid/graphics/Canvas;F)V

    .line 733
    :cond_11
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    const/4 v8, 0x2

    if-eqz v6, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->drawCounter()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 735
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 736
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 740
    :cond_12
    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    if-eqz v6, :cond_13

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/16 v6, 0xa

    .line 742
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 743
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AvatarsDrawable;->setAlpha(F)V

    .line 744
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AvatarsDrawable;->setTransitionProgress(F)V

    .line 745
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    return-void
.end method

.method protected drawCounter()Z
    .locals 2

    .line 649
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->count:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->counterDrawable:Lorg/telegram/ui/Components/CounterView$CounterDrawable;

    iget v0, v0, Lorg/telegram/ui/Components/CounterView$CounterDrawable;->countChangeProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected getCacheType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected getDrawServiceShaderBackground()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getImageReceiver()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected isOutOwner()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected removeImageReceiver()V
    .locals 0

    return-void
.end method

.method public setUsers(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .line 825
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->users:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 827
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->access$500()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 828
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 829
    new-instance v0, Lorg/telegram/ui/Components/AvatarsDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->parentView:Landroid/view/View;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const-wide/16 v2, 0xfa

    .line 830
    iput-wide v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->transitionDuration:J

    .line 831
    sget-object v2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v2, 0x14

    .line 832
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setSize(I)V

    .line 833
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    const/16 v2, 0x64

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->width:I

    .line 834
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    iput v2, v0, Lorg/telegram/ui/Components/AvatarsDrawable;->height:I

    const/16 v2, 0x16

    .line 835
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AvatarsDrawable;->setAvatarsTextSize(I)V

    .line 837
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->attached:Z

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->onAttachedToWindow()V

    :cond_1
    move v0, v1

    .line 840
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 844
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->currentAccount:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/ui/Components/AvatarsDrawable;->setObject(IILorg/telegram/tgnet/TLObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AvatarsDrawable;->commitTransition(Z)V

    :cond_4
    return-void
.end method

.method protected updateColors(F)V
    .locals 4

    .line 751
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromTextColor:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->textColor:I

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceTextColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnTextColor:I

    .line 752
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->fromBackgroundColor:I

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->backgroundColor:I

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->serviceBackgroundColor:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->getDrawServiceShaderBackground()F

    move-result v3

    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->lastDrawnBackgroundColor:I

    return-void
.end method
