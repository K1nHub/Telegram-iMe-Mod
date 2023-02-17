.class Lorg/telegram/ui/DialogsActivity$34$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$34$3;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/DialogsActivity$34$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$34$3;)V
    .locals 0

    .line 6605
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$34$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$34$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 6608
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$34$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$34$3;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6609
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$34$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$34$3;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$9102(Lorg/telegram/ui/DialogsActivity;Landroid/view/View;)Landroid/view/View;

    .line 6611
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$34$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$34$3;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$30800(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6612
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$34$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$34$3;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$30900(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
