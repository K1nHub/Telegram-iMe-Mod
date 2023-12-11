.class Lorg/telegram/ui/Stories/PeerStoriesView$13$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView$13;->checkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$13;)V
    .locals 0

    .line 1909
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1912
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1913
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$4502(Lorg/telegram/ui/Stories/PeerStoriesView$13;I)I

    .line 1914
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 1915
    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$4600(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$4700(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1916
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$5100(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$4800(Lorg/telegram/ui/Stories/PeerStoriesView$13;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$4900(Lorg/telegram/ui/Stories/PeerStoriesView$13;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$5000(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1917
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$5200(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1918
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$5400(Lorg/telegram/ui/Stories/PeerStoriesView$13;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$13;->access$5300(Lorg/telegram/ui/Stories/PeerStoriesView$13;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1921
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$13$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$13;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$13;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$4402(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
