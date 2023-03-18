.class Lorg/telegram/ui/DialogsActivity$12$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$12$3;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/DialogsActivity$12$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$12$3;)V
    .locals 0

    .line 5071
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$12$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$12$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 5074
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$12$3;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12$3;->this$1:Lorg/telegram/ui/DialogsActivity$12;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5075
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$12$3;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12$3;->this$1:Lorg/telegram/ui/DialogsActivity$12;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5076
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$12$3;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12$3;->this$1:Lorg/telegram/ui/DialogsActivity$12;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$9102(Lorg/telegram/ui/DialogsActivity;Landroid/view/View;)Landroid/view/View;

    .line 5078
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$12$3;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12$3;->this$1:Lorg/telegram/ui/DialogsActivity$12;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26600(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5079
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$12$3$1;->this$2:Lorg/telegram/ui/DialogsActivity$12$3;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12$3;->this$1:Lorg/telegram/ui/DialogsActivity$12;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26700(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
