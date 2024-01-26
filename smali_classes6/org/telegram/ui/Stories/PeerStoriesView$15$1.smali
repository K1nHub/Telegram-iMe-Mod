.class Lorg/telegram/ui/Stories/PeerStoriesView$15$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView$15;->checkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$15;)V
    .locals 0

    .line 2200
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 2203
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2204
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$5402(Lorg/telegram/ui/Stories/PeerStoriesView$15;I)I

    .line 2205
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 2206
    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$5500(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$5600(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2207
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$6000(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$5700(Lorg/telegram/ui/Stories/PeerStoriesView$15;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$5800(Lorg/telegram/ui/Stories/PeerStoriesView$15;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$5900(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2208
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$6100(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2209
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$6300(Lorg/telegram/ui/Stories/PeerStoriesView$15;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$15;->access$6200(Lorg/telegram/ui/Stories/PeerStoriesView$15;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2212
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$15$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$15;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$15;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$5302(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
