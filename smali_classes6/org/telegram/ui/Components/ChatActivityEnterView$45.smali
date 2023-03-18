.class Lorg/telegram/ui/Components/ChatActivityEnterView$45;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->checkSendButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 6626
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 6642
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6643
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13402(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 6629
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13400(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6630
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$6700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6631
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6632
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13800(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 6633
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6634
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6635
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13402(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 6636
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$45;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$13702(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    :cond_0
    return-void
.end method
