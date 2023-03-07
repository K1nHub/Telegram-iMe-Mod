.class Lorg/telegram/ui/Components/FragmentContextView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;

.field final synthetic val$currentAccount:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;I)V
    .locals 0

    .line 2084
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    iput p2, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->val$currentAccount:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2087
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->access$2200(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 2088
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$2100(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$2100(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2089
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->setVisibility(I)V

    .line 2090
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$2102(Lorg/telegram/ui/Components/FragmentContextView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2091
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->access$2500(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2092
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkCall(Z)V

    goto :goto_0

    .line 2093
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->access$2600(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2094
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$2700(Lorg/telegram/ui/Components/FragmentContextView;Z)V

    goto :goto_0

    .line 2095
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FragmentContextView;->access$2800(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2096
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->checkImport(Z)V

    .line 2098
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$2502(Lorg/telegram/ui/Components/FragmentContextView;Z)Z

    .line 2099
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$2602(Lorg/telegram/ui/Components/FragmentContextView;Z)Z

    .line 2100
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$15;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->access$2802(Lorg/telegram/ui/Components/FragmentContextView;Z)Z

    :cond_3
    return-void
.end method
