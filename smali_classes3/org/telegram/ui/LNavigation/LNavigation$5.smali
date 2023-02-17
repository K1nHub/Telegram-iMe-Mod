.class Lorg/telegram/ui/LNavigation/LNavigation$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LNavigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LNavigation/LNavigation;->lambda$animateThemedValues$18(ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LNavigation/LNavigation;

.field final synthetic val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V
    .locals 0

    .line 1708
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v0}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2300(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1728
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2400(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1729
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2500(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1730
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2600(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1731
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2700(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 1732
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 1733
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2802(Lorg/telegram/ui/LNavigation/LNavigation;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1734
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1, v0}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2302(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1735
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1736
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {v0}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2300(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1712
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2400(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1713
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2500(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1714
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2600(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1715
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2700(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 1716
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 1717
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2802(Lorg/telegram/ui/LNavigation/LNavigation;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1718
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->this$0:Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-static {p1, v0}, Lorg/telegram/ui/LNavigation/LNavigation;->access$2302(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1719
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation$5;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1720
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
