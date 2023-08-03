.class public Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;
.super Landroid/view/View;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageViewEmoji"
.end annotation


# instance fields
.field private animatedScale:F

.field public attached:Z

.field backAnimator:Landroid/animation/ValueAnimator;

.field public backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

.field public bigReactionSelectedProgress:F

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public drawableBounds:Landroid/graphics/Rect;

.field public empty:Z

.field public imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

.field final invalidateHolder:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

.field public isDefaultReaction:Z

.field public isStaticIcon:Z

.field public notDraw:Z

.field public position:I

.field public preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private pressedProgress:F

.field public reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public selected:Z

.field private selectedProgress:F

.field public skewAlpha:F

.field public skewIndex:I

.field public span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method public static synthetic $r8$lambda$_P5g0oYeo0rHxVZmi6vnGuob8ug(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->lambda$setPressed$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hVcvJhWNofBy7Pbz5DUhdMJPyts(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V
    .locals 0

    .line 2747
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 2748
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2713
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    .line 2714
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    const/4 p1, 0x2

    new-array p1, p1, [Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    .line 2718
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    .line 2720
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2736
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->animatedScale:F

    .line 2738
    new-instance p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidateHolder:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    .line 2749
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lorg/telegram/messenger/ImageReceiver;->ignoreNotifications:Z

    return-void
.end method

.method static synthetic access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F
    .locals 0

    .line 2712
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->pressedProgress:F

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 2739
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2742
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2743
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setPressed$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2782
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->pressedProgress:F

    .line 2783
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method


# virtual methods
.method public createImageReceiver(Landroid/view/View;)V
    .locals 1

    .line 2903
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_1

    .line 2904
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 p1, 0x7

    .line 2905
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 2906
    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->attached:Z

    if-eqz p1, :cond_0

    .line 2907
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 2909
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    :cond_1
    return-void
.end method

.method public createPremiumLockView()V
    .locals 4

    .line 2932
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-nez v0, :cond_0

    .line 2933
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->TYPE_STICKERS_PREMIUM_LOCKED:I

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    const/16 v0, 0xc

    .line 2934
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2935
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 2936
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public drawSelected(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 5

    .line 2827
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selectedProgress:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_5

    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-nez v2, :cond_5

    const v2, 0x3d5a740e

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 2828
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selectedProgress:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_1

    add-float/2addr v0, v2

    .line 2829
    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selectedProgress:F

    .line 2830
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 2832
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selectedProgress:F

    cmpl-float v4, v0, v1

    if-lez v4, :cond_2

    sub-float/2addr v0, v2

    .line 2833
    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selectedProgress:F

    .line 2834
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 2836
    :cond_2
    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selectedProgress:F

    invoke-static {p2, v3, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selectedProgress:F

    .line 2838
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x1

    .line 2839
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 2840
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorAccentPaint:Landroid/graphics/Paint;

    .line 2841
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v2, v1

    .line 2842
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selectedProgress:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x4

    .line 2843
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v3, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2844
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_5
    return-void
.end method

.method public getAnimatedScale()F
    .locals 1

    .line 2760
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->animatedScale:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 2915
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2918
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2919
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 2925
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2928
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2850
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2851
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->attached:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2854
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->attached:Z

    .line 2855
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    .line 2856
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidateHolder:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 2858
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 2859
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 2860
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 2862
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2867
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2868
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->attached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2871
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->attached:Z

    .line 2872
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    .line 2873
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidateHolder:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 2875
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 2876
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 2878
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->preloadEffectImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 2765
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p2, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setAnimatedScale(F)V
    .locals 0

    .line 2756
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->animatedScale:F

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2882
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 2883
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->attached:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    .line 2884
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidateHolder:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    .line 2886
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    .line 2887
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->attached:Z

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_1

    .line 2888
    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidateHolder:Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;)V

    :cond_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    .line 2770
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2771
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 2772
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    if-eqz p1, :cond_0

    .line 2774
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2775
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 2776
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    .line 2779
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->pressedProgress:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    .line 2780
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    .line 2781
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2785
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2792
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2793
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2794
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public setSticker(Lorg/telegram/tgnet/TLRPC$Document;Landroid/view/View;)V
    .locals 12

    .line 2894
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2895
    invoke-virtual {p0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->createImageReceiver(Landroid/view/View;)V

    .line 2896
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Lorg/telegram/tgnet/TLRPC$Document;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v6

    .line 2897
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const-string v3, "100_100_firstframe"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-string v9, "tgs"

    const/4 v11, 0x0

    move-object v10, p1

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    const/4 p1, 0x1

    .line 2898
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    const/4 p1, 0x0

    .line 2899
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    return-void
.end method

.method public setViewSelected(ZZ)V
    .locals 1

    .line 2818
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eq v0, p1, :cond_1

    .line 2819
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2821
    :goto_0
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selectedProgress:F

    :cond_1
    return-void
.end method

.method public update(J)V
    .locals 2

    .line 2807
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_1

    .line 2808
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2809
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->updateCurrentFrame(JZ)V

    .line 2811
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2812
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->updateCurrentFrame(JZ)V

    :cond_1
    return-void
.end method

.method public updatePressedProgress()V
    .locals 3

    .line 2800
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->pressedProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const v2, 0x3e23d70a    # 0.16f

    add-float/2addr v0, v2

    const/4 v2, 0x0

    .line 2801
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->pressedProgress:F

    .line 2802
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    :cond_0
    return-void
.end method
