.class Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasscodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;->this$0:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$400(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    iget-object v0, v0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;->this$0:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$400(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1$1;->this$1:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;

    iget-object p1, p1, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView$1;->this$0:Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;->access$402(Lorg/telegram/ui/Components/PasscodeView$AnimatingTextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
