.class Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopupSwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PopupSwipeBackLayout;->animateToState(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

.field final synthetic val$f:F

.field final synthetic val$selectedAccount:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PopupSwipeBackLayout;FI)V
    .locals 0

    .line 300
    iput-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iput p2, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->val$f:F

    iput p3, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->val$selectedAccount:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 309
    iget p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->val$selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$800(Lorg/telegram/ui/Components/PopupSwipeBackLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget v0, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->val$f:F

    iput v0, p1, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->transitionProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    .line 312
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$902(Lorg/telegram/ui/Components/PopupSwipeBackLayout;I)I

    .line 314
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->invalidateTransforms()V

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$502(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 303
    iget-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$502(Lorg/telegram/ui/Components/PopupSwipeBackLayout;Z)Z

    .line 304
    iget-object p1, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->this$0:Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    iget v0, p0, Lorg/telegram/ui/Components/PopupSwipeBackLayout$2;->val$f:F

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->access$402(Lorg/telegram/ui/Components/PopupSwipeBackLayout;F)F

    return-void
.end method
