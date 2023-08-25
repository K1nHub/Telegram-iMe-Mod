.class Lorg/telegram/ui/PhotoViewer$58$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$58;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$58;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$58;)V
    .locals 0

    .line 11241
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 11249
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->init()V

    .line 11250
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$22002(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 11251
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget p1, p1, Lorg/telegram/ui/PhotoViewer$58;->val$mode:I

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 11252
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$3002(Lorg/telegram/ui/PhotoViewer;I)I

    .line 11253
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$22602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11254
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$26002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11255
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$26102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11256
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$10802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11257
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;F)V

    .line 11258
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$27702(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 11259
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58$1;->this$1:Lorg/telegram/ui/PhotoViewer$58;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
