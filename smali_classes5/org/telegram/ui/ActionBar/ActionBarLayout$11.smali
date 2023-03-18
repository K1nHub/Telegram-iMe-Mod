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

    .line 2307
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 2326
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2327
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2328
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2329
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2330
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 2331
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 2332
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2802(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2333
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2302(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2334
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2335
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2310
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2311
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2312
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2313
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2314
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 2315
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 2316
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2802(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2317
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->this$0:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->access$2302(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2318
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;->val$settings:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2319
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
