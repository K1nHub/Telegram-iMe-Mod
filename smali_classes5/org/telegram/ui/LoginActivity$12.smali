.class Lorg/telegram/ui/LoginActivity$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->showDoneButton(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field final synthetic val$floating:Z

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;ZZ)V
    .locals 0

    .line 1524
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$12;->val$floating:Z

    iput-boolean p3, p0, Lorg/telegram/ui/LoginActivity$12;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$12;->val$floating:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$12;->val$floating:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1551
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$12;->val$floating:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1527
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$12;->val$floating:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$12;->val$floating:Z

    xor-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1528
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$12;->val$show:Z

    if-nez p1, :cond_1

    .line 1529
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$12;->val$floating:Z

    if-eqz p1, :cond_0

    .line 1530
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$500(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1533
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$12;->val$floating:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/TransformableLoginButtonView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 1534
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/TransformableLoginButtonView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1535
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/TransformableLoginButtonView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1536
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/TransformableLoginButtonView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1537
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/TransformableLoginButtonView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1538
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$500(Lorg/telegram/ui/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1539
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3100(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setAlpha(F)V

    .line 1540
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3100(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1541
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3100(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1542
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$12;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3100(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
