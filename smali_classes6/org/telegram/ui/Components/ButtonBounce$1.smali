.class Lorg/telegram/ui/Components/ButtonBounce$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ButtonBounce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ButtonBounce;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ButtonBounce;Z)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce$1;->this$0:Lorg/telegram/ui/Components/ButtonBounce;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ButtonBounce$1;->val$pressed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/telegram/ui/Components/ButtonBounce$1;->this$0:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-static {v0}, Lorg/telegram/ui/Components/ButtonBounce;->access$000(Lorg/telegram/ui/Components/ButtonBounce;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce$1;->this$0:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->access$002(Lorg/telegram/ui/Components/ButtonBounce;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 67
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce$1;->this$0:Lorg/telegram/ui/Components/ButtonBounce;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ButtonBounce$1;->val$pressed:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->access$102(Lorg/telegram/ui/Components/ButtonBounce;F)F

    .line 68
    iget-object p1, p0, Lorg/telegram/ui/Components/ButtonBounce$1;->this$0:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ButtonBounce;->invalidate()V

    :cond_1
    return-void
.end method
