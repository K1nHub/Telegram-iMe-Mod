.class Lorg/telegram/ui/ActionBar/ActionBarLayout$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$animateThemedValues$6(ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field final synthetic val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V
    .locals 0

    .line 2476
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 2497
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2498
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2499
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2500
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2501
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 2502
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 2503
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2902(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2504
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object v0, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    .line 2505
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2402(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2506
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2507
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2479
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 2480
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2481
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2482
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2483
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2484
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2800(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 2485
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 2486
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2902(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2487
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object v0, p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    .line 2488
    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2402(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2489
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2490
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
