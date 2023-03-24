.class public Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;
.super Ljava/lang/Object;
.source "AnimatedEmojiEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;
    }
.end annotation


# instance fields
.field public animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field animationIndex:I

.field bounds:Landroid/graphics/Rect;

.field currentAccount:I

.field effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field firsDraw:Z

.field lastGenerateTime:J

.field longAnimation:Z

.field parentView:Landroid/view/View;

.field particles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;",
            ">;"
        }
    .end annotation
.end field

.field showGeneric:Z

.field startTime:J


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;IZZ)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->bounds:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->firsDraw:Z

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    .line 42
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 43
    iput-boolean p3, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->longAnimation:Z

    .line 44
    iput p2, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    .line 45
    iput-boolean p4, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->showGeneric:Z

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->startTime:J

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    const/16 p1, 0x1010

    .line 47
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 48
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :cond_0
    return-void
.end method

.method public static createFrom(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;ZZ)Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;
    .locals 2

    .line 53
    new-instance v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;-><init>(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;IZZ)V

    return-object v0
.end method


# virtual methods
.method public done()Z
    .locals 4

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 67
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->longAnimation:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 68
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->firsDraw:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 70
    new-instance v3, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;-><init>(Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$1;)V

    .line 71
    invoke-virtual {v3}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;->generate()V

    .line 72
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v5, 0xc

    if-ge v0, v5, :cond_1

    iget-wide v5, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->startTime:J

    sub-long v7, v3, v5

    const-wide/16 v9, 0x5dc

    cmp-long v0, v7, v9

    if-gez v0, :cond_1

    sub-long v5, v3, v5

    const-wide/16 v7, 0xc8

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 78
    iget-wide v5, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->lastGenerateTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x32

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;-><init>(Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$1;)V

    .line 80
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;->generate()V

    .line 81
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iput-wide v3, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->lastGenerateTime:J

    .line 86
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->showGeneric:Z

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_2
    move v0, v2

    .line 91
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect$Particle;->progress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_3

    .line 94
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->particles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->parentView:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 101
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->firsDraw:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_0

    .line 60
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 11

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 110
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->parentView:Landroid/view/View;

    .line 111
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->showGeneric:Z

    if-eqz v0, :cond_6

    .line 112
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 113
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    const/4 v0, 0x0

    .line 114
    invoke-static {p1, v0}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 117
    iget v3, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz p1, :cond_0

    .line 118
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_0

    .line 119
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v3}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-static {}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->getFilterForAroundAnimation()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->around_animation:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-nez p1, :cond_3

    .line 124
    iget v3, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/UserConfig;->genericAnimationsStickerPack:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 127
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 134
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    if-gez p1, :cond_2

    .line 135
    sget-object p1, Lorg/telegram/messenger/Utilities;->fastRandom:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    .line 137
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->animationIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    const-string v5, "60_60"

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    move p1, v1

    :cond_3
    if-eqz p1, :cond_5

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 143
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1, v2, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 145
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    goto :goto_1

    .line 147
    :cond_5
    new-instance p1, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v4, Lorg/telegram/messenger/R$raw;->custom_emoji_reaction:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x3c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->effectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_1
    return-void
.end method
