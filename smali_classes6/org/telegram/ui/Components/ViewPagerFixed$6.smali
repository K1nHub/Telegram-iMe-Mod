.class Lorg/telegram/ui/Components/ViewPagerFixed$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewPagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ViewPagerFixed;->rebuild(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ViewPagerFixed;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 868
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->access$1002(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 869
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 870
    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 871
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    aput-object v0, p1, v2

    .line 873
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->access$002(Lorg/telegram/ui/Components/ViewPagerFixed;Z)Z

    .line 874
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    if-eqz p1, :cond_1

    .line 875
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 876
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$902(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Z)Z

    .line 877
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1402(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;F)F

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$6;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed;->tabsView:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method
