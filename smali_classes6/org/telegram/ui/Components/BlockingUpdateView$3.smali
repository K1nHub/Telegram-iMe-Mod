.class Lorg/telegram/ui/Components/BlockingUpdateView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlockingUpdateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BlockingUpdateView;->showProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BlockingUpdateView;Z)V
    .locals 0

    .line 259
    iput-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->access$100(Lorg/telegram/ui/Components/BlockingUpdateView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->access$100(Lorg/telegram/ui/Components/BlockingUpdateView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->access$102(Lorg/telegram/ui/Components/BlockingUpdateView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->access$100(Lorg/telegram/ui/Components/BlockingUpdateView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {v0}, Lorg/telegram/ui/Components/BlockingUpdateView;->access$100(Lorg/telegram/ui/Components/BlockingUpdateView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 263
    iget-boolean p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->val$show:Z

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 264
    iget-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {p1}, Lorg/telegram/ui/Components/BlockingUpdateView;->access$200(Lorg/telegram/ui/Components/BlockingUpdateView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/BlockingUpdateView$3;->this$0:Lorg/telegram/ui/Components/BlockingUpdateView;

    invoke-static {p1}, Lorg/telegram/ui/Components/BlockingUpdateView;->access$300(Lorg/telegram/ui/Components/BlockingUpdateView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
