.class Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageViewEmoji"
.end annotation


# instance fields
.field backAnimator:Landroid/animation/ValueAnimator;

.field private backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field private ignoring:Z

.field public position:I

.field pressedProgress:F

.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;


# direct methods
.method public static synthetic $r8$lambda$cOd1mHwtujM86Y-17rJRT97srW0(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->lambda$setPressed$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V
    .locals 4

    .line 1590
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    .line 1591
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x2

    new-array v0, p2, [Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    .line 1586
    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    const/4 v0, 0x3

    .line 1592
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1593
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$5000(Lorg/telegram/ui/Components/StickerMasksAlert;I)I

    move-result p1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1, v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$3302(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;Z)Z
    .locals 0

    .line 1578
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->ignoring:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;
    .locals 0

    .line 1578
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 1578
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->setDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method private synthetic lambda$setPressed$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1640
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    .line 1641
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setDocument(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    .line 1607
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$5100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->setDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    return-void
.end method

.method private setDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 1

    .line 1597
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1598
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 1600
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    .line 1602
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1612
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onAttachedToWindow()V

    .line 1613
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1614
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1620
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onDetachedFromWindow()V

    .line 1621
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1622
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1659
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 1660
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    const/4 v2, 0x0

    .line 1661
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    .line 1662
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    const v2, 0x3e4ccccd    # 0.2f

    .line 1664
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 1665
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1666
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1667
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1668
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1673
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    .line 1628
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1629
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1630
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_0

    .line 1632
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1633
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1634
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    .line 1637
    iget p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    .line 1638
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    .line 1639
    new-instance v0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1643
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$1;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1650
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1651
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1652
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
