.class Lorg/telegram/ui/Components/MediaActivity$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MediaActivity$6;->showActionMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MediaActivity$6;

.field final synthetic val$empty:Z

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MediaActivity$6;ZZ)V
    .locals 0

    .line 734
    iput-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->val$show:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->val$empty:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 737
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/MediaActivity$6;->access$1602(Lorg/telegram/ui/Components/MediaActivity$6;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 742
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity$6;->access$1600(Lorg/telegram/ui/Components/MediaActivity$6;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 745
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/MediaActivity$6;->access$1602(Lorg/telegram/ui/Components/MediaActivity$6;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 746
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->val$show:Z

    const/16 v0, 0x8

    const/4 v1, 0x4

    if-nez p1, :cond_4

    .line 747
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$900(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$1000(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 749
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$1000(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 751
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$1300(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 752
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$1300(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 754
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->val$empty:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$1400(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 755
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$1400(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 757
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->getActionModeLayout()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 759
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$1100(Lorg/telegram/ui/Components/MediaActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 760
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$1400(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 761
    iget-object p1, p0, Lorg/telegram/ui/Components/MediaActivity$6$1;->this$1:Lorg/telegram/ui/Components/MediaActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/Components/MediaActivity$6;->this$0:Lorg/telegram/ui/Components/MediaActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/MediaActivity;->access$1400(Lorg/telegram/ui/Components/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method
