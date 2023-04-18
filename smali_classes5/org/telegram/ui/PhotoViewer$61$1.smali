.class Lorg/telegram/ui/PhotoViewer$61$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$61;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$61;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$61;)V
    .locals 0

    .line 10575
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 10583
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->init()V

    .line 10584
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21502(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 10585
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget p1, p1, Lorg/telegram/ui/PhotoViewer$61;->val$mode:I

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$2402(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10586
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$2902(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10587
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$22102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10588
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$25502(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10589
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$25602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10590
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$10602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10591
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;F)V

    .line 10592
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$27002(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10593
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$61$1;->this$1:Lorg/telegram/ui/PhotoViewer$61;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$61;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
