.class Lorg/telegram/ui/Stories/PeerStoriesView$8$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PeerStoriesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/PeerStoriesView$8;->checkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/PeerStoriesView$8;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1373
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1374
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$3602(Lorg/telegram/ui/Stories/PeerStoriesView$8;I)I

    .line 1375
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    iget-object v0, p1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Stories/PeerStoriesView;->forceUpdateOffsets:Z

    .line 1376
    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$3700(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$3800(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 1377
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$4200(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$3900(Lorg/telegram/ui/Stories/PeerStoriesView$8;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$4000(Lorg/telegram/ui/Stories/PeerStoriesView$8;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-static {v2}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$4100(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1378
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$4300(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1379
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-static {p1}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$4500(Lorg/telegram/ui/Stories/PeerStoriesView$8;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    invoke-static {v0}, Lorg/telegram/ui/Stories/PeerStoriesView$8;->access$4400(Lorg/telegram/ui/Stories/PeerStoriesView$8;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1382
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$8$1;->this$1:Lorg/telegram/ui/Stories/PeerStoriesView$8;

    iget-object p1, p1, Lorg/telegram/ui/Stories/PeerStoriesView$8;->this$0:Lorg/telegram/ui/Stories/PeerStoriesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/PeerStoriesView;->access$3502(Lorg/telegram/ui/Stories/PeerStoriesView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
