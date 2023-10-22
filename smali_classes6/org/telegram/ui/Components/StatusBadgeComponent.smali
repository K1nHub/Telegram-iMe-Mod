.class public Lorg/telegram/ui/Components/StatusBadgeComponent;
.super Ljava/lang/Object;
.source "StatusBadgeComponent.java"


# instance fields
.field private final statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private verifiedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/16 v1, 0x12

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    return-void
.end method

.method public updateDrawable(Lorg/telegram/tgnet/TLObject;IZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 22
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/telegram/ui/Components/StatusBadgeComponent;->updateDrawable(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/telegram/ui/Components/StatusBadgeComponent;->updateDrawable(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p0, v1, v1, p2, p3}, Lorg/telegram/ui/Components/StatusBadgeComponent;->updateDrawable(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public updateDrawable(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;IZ)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 31
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->verified:Z

    if-eqz p2, :cond_1

    .line 32
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p2, p3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 33
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 34
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p1

    :cond_1
    if-eqz p1, :cond_3

    .line 36
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz p2, :cond_3

    .line 37
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    new-instance p2, Lorg/telegram/ui/Components/CombinedDrawable;

    sget-object p3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p2, p3, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iput-object p2, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->verifiedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 38
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 39
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    if-eqz v1, :cond_4

    .line 40
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    .line 41
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 42
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    if-eqz v1, :cond_5

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->until:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    if-le p2, v1, :cond_5

    .line 43
    iget-object p2, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->emoji_status:Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatusUntil;->document_id:J

    invoke-virtual {p2, v1, v2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)V

    .line 44
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 45
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->premium:Z

    if-eqz p1, :cond_6

    .line 46
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {}, Lorg/telegram/ui/Components/Premium/PremiumGradient;->getInstance()Lorg/telegram/ui/Components/Premium/PremiumGradient;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/Premium/PremiumGradient;->premiumStarDrawableMini:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 47
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    goto :goto_0

    .line 49
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0, p4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(Landroid/graphics/drawable/Drawable;Z)V

    .line 50
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setColor(Ljava/lang/Integer;)V

    .line 52
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/StatusBadgeComponent;->statusDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p1
.end method
