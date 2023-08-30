.class Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

.field final synthetic val$expanded:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Lorg/telegram/ui/ProfileActivity;Z)V
    .locals 0

    .line 1853
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iput-boolean p3, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->val$expanded:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1856
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->access$2800(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    .line 1858
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1859
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1862
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1863
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1865
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1866
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1868
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1869
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1871
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1872
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1875
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1877
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1883
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1884
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1887
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->val$expanded:Z

    if-nez p1, :cond_1

    .line 1888
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1890
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1891
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1893
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1894
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1896
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1897
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1899
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1900
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;->this$1:Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$3800(Lorg/telegram/ui/ProfileActivity;Z)V

    return-void
.end method
