.class Lorg/telegram/ui/LoginActivity$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity;->setCustomKeyboardVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$9;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$9;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1044
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$9;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$1502(Lorg/telegram/ui/LoginActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1038
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$9;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$1200(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
