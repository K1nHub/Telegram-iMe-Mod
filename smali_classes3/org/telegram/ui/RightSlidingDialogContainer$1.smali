.class Lorg/telegram/ui/RightSlidingDialogContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RightSlidingDialogContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/RightSlidingDialogContainer;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

.field final synthetic val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/RightSlidingDialogContainer;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$1;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    iput-object p2, p0, Lorg/telegram/ui/RightSlidingDialogContainer$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$1;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget-object v0, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 124
    iput-object v0, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    .line 125
    invoke-static {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->access$100(Lorg/telegram/ui/RightSlidingDialogContainer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer$1;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-static {v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->access$000(Lorg/telegram/ui/RightSlidingDialogContainer;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 126
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$1;->val$fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$1;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 128
    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer$1;->this$0:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimationFinished()V

    return-void
.end method
