.class Lorg/telegram/ui/LoginActivity$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$transformButton:Lorg/telegram/ui/Components/TransformableLoginButtonView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/TransformableLoginButtonView;Ljava/lang/Runnable;)V
    .locals 0

    .line 8490
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$15;->val$transformButton:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$15;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 8504
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$17200(Lorg/telegram/ui/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 8505
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$17300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8506
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8507
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$500(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8509
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 8510
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$15;->val$transformButton:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 8512
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$7900(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8513
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$7900(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 8514
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/LoginActivity;->access$7902(Lorg/telegram/ui/LoginActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 8516
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$7802(Lorg/telegram/ui/LoginActivity;Z)Z

    .line 8518
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 8493
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$500(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8494
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$17200(Lorg/telegram/ui/LoginActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 8495
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8496
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$17300(Lorg/telegram/ui/LoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8498
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$15;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 8499
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$15;->val$transformButton:Lorg/telegram/ui/Components/TransformableLoginButtonView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
