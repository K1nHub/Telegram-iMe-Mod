.class Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "ReactionsContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Landroid/content/Context;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 1447
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createImageReciever()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 1467
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3$1;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3$1;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;Landroid/view/View;)V

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1486
    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grabIfWeakDevice([Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1489
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1494
    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->grabIfWeakDevice([Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1497
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1451
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_0
    if-eqz v0, :cond_3

    .line 1452
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1453
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$3;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1456
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_3

    .line 1457
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    goto :goto_2

    .line 1454
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1461
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
