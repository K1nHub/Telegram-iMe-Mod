.class Lorg/telegram/ui/Components/ShareAlert$28;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Z)V
    .locals 0

    .line 2603
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$28;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$28;->val$show:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 2622
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$28;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$12000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2623
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$28;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$12002(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2606
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$28;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$12000(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2607
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert$28;->val$show:Z

    if-nez p1, :cond_1

    .line 2609
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$28;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$5500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 2610
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$28;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$5500(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2613
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$28;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$4900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2614
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$28;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$5100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2616
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$28;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$12002(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_2
    return-void
.end method
