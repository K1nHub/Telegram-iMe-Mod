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

    .line 1586
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    .line 1587
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x2

    new-array v0, p2, [Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    .line 1582
    iput-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    const/4 v0, 0x3

    .line 1588
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    const-string v0, "listSelectorSDK21"

    .line 1589
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4800(Lorg/telegram/ui/Components/StickerMasksAlert;Ljava/lang/String;)I

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

    .line 1574
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->ignoring:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;
    .locals 0

    .line 1574
    iget-object p0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 1574
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->setDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method private synthetic lambda$setPressed$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1636
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    .line 1637
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setDocument(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    .line 1603
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$4900(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->setDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    return-void
.end method

.method private setDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 1

    .line 1593
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1594
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 1596
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_1

    .line 1598
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1608
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onAttachedToWindow()V

    .line 1609
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1610
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1616
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onDetachedFromWindow()V

    .line 1617
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 1618
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1655
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 1656
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    const/4 v2, 0x0

    .line 1657
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    .line 1658
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    const v2, 0x3e4ccccd    # 0.2f

    .line 1660
    iget v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    sub-float/2addr v1, v3

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    .line 1661
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1662
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

    .line 1663
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1664
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1669
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    .line 1624
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1625
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1626
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz p1, :cond_0

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1629
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1630
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    .line 1633
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

    .line 1634
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    .line 1635
    new-instance v0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1639
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji$1;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1646
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1647
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1648
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method
