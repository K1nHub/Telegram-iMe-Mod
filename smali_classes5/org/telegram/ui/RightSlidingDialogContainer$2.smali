.class Lorg/telegram/ui/RightSlidingDialogContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RightSlidingDialogContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreviewInernal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/RightSlidingDialogContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 307
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget-object v0, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 310
    iput-object v0, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    .line 311
    iput v1, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 312
    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-static {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->access$100(Lorg/telegram/ui/RightSlidingDialogContainer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-static {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->access$000(Lorg/telegram/ui/RightSlidingDialogContainer;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget-object p1, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget-object p1, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    iput-object v0, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 319
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 322
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$2;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimationFinished()V

    return-void
.end method
