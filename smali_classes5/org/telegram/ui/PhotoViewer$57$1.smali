.class Lorg/telegram/ui/PhotoViewer$57$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$57;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$57;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$57;)V
    .locals 0

    .line 11087
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 11096
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onAppeared()V

    .line 11097
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onShow()V

    .line 11099
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$22102(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 11100
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget p1, p1, Lorg/telegram/ui/PhotoViewer$57;->val$mode:I

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 11101
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$3002(Lorg/telegram/ui/PhotoViewer;I)I

    .line 11102
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$22702(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11103
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$26102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11104
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$26202(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11105
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$10802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11106
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$10800(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$12900(Lorg/telegram/ui/PhotoViewer;F)V

    .line 11107
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$27802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 11108
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 11090
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$25900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11091
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$57$1;->this$1:Lorg/telegram/ui/PhotoViewer$57;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$57;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
