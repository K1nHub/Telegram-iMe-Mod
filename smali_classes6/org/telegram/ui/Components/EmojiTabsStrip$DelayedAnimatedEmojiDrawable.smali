.class Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "EmojiTabsStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAnimatedEmojiDrawable"
.end annotation


# instance fields
.field account:I

.field alpha:I

.field cacheType:I

.field document:Lorg/telegram/tgnet/TLRPC$Document;

.field documentId:J

.field drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private lastColorFilter:Landroid/graphics/ColorFilter;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(IILorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    .line 440
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 438
    iput v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->alpha:I

    .line 441
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->account:I

    .line 442
    iput p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->cacheType:I

    .line 443
    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p3, :cond_0

    .line 445
    iget-wide p1, p3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->documentId:J

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public equals(J)Z
    .locals 2

    .line 489
    iget-wide v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->documentId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public load()V
    .locals 4

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_1

    .line 460
    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->account:I

    iget v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->cacheType:I

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_0

    .line 462
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->account:I

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->cacheType:I

    iget-wide v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->documentId:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 464
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->lastColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_2

    .line 465
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 467
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->alpha:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    new-instance v1, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable$1;-><init>(Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->view:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 485
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public removeView()V
    .locals 2

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->view:Landroid/view/View;

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 524
    iput p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->alpha:I

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 534
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->lastColorFilter:Landroid/graphics/ColorFilter;

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public updateView(Landroid/view/View;)V
    .locals 2

    .line 494
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->view:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 498
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 501
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->view:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 502
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$DelayedAnimatedEmojiDrawable;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
