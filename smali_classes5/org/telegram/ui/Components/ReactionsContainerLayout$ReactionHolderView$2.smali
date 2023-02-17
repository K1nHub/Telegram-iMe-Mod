.class Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;
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
.method public static synthetic $r8$lambda$h89Q1SC4EqIPLGvbBvckMqy20wg(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->lambda$dispatchDraw$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Landroid/content/Context;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 1244
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$dispatchDraw$0()V
    .locals 2

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1248
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1249
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->waitingAnimation:Z

    if-nez p1, :cond_0

    .line 1250
    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 1252
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->shouldSwitchToLoopView:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->isLastFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->hasBitmap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1253
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    .line 1254
    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZZ)V

    .line 1255
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    new-instance p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1260
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->invalidate()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 1265
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0

    .line 1271
    invoke-super {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1272
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView$2;->this$1:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->this$0:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
