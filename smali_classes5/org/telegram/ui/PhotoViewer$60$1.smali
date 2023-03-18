.class Lorg/telegram/ui/PhotoViewer$60$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$60;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$60;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$60;)V
    .locals 0

    .line 10398
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 10407
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onAppeared()V

    .line 10408
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onShow()V

    .line 10410
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21502(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 10411
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget p1, p1, Lorg/telegram/ui/PhotoViewer$60;->val$mode:I

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$2402(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10412
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$2902(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10413
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$22102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10414
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$25502(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10415
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$25602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10416
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$10602(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10417
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10600(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$12700(Lorg/telegram/ui/PhotoViewer;F)V

    .line 10418
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$27002(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10419
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 10401
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10402
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$60$1;->this$1:Lorg/telegram/ui/PhotoViewer$60;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$60;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
