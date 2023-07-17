.class Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UpdateAppAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/UpdateAppAlertDialog;->runShadowAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Z)V
    .locals 0

    .line 377
    iput-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$800(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$800(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$802(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$800(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$800(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 381
    iget-boolean p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->val$show:Z

    if-nez p1, :cond_0

    .line 382
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    invoke-static {p1}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$900(Lorg/telegram/ui/Components/UpdateAppAlertDialog;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/UpdateAppAlertDialog$3;->this$0:Lorg/telegram/ui/Components/UpdateAppAlertDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/UpdateAppAlertDialog;->access$802(Lorg/telegram/ui/Components/UpdateAppAlertDialog;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method
