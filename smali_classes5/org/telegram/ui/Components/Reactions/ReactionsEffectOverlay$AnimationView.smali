.class Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "ReactionsEffectOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationView"
.end annotation


# instance fields
.field animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field attached:Z

.field emojiEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

.field wasPlaying:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;Landroid/content/Context;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    .line 746
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 747
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setFileLoadingPriority(I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 786
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->attached:Z

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->emojiEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 798
    invoke-super {p0}, Lorg/telegram/ui/Components/BackupImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 799
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->attached:Z

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 803
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->emojiEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 757
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 759
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 760
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 761
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    return-void

    .line 764
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->emojiEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->setBounds(IIII)V

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->emojiEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;->draw(Landroid/graphics/Canvas;)V

    .line 767
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    return-void

    .line 770
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    .line 773
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->wasPlaying:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->this$0:Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;->access$1600(Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 775
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    goto :goto_0

    .line 777
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 778
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 781
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAnimatedEmojiEffect(Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->emojiEffect:Lorg/telegram/ui/Components/Reactions/AnimatedEmojiEffect;

    return-void
.end method

.method public setAnimatedReactionDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 810
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 812
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 813
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/ReactionsEffectOverlay$AnimationView;->attached:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 814
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
