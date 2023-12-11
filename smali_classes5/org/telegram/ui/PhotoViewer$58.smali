.class Lorg/telegram/ui/PhotoViewer$58;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToPaintMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 11097
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 11101
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$13200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->onAnimationStateChanged(Z)V

    .line 11102
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$13200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->init()V

    .line 11103
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PaintingOverlay;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PaintingOverlay;->hideEntities()V

    .line 11104
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$20802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 11105
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 11106
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 11107
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11108
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v2}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v2

    if-eq v2, v1, :cond_1

    move v0, v3

    :cond_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 11110
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$24802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11111
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$3102(Lorg/telegram/ui/PhotoViewer;I)I

    .line 11112
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;F)F

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$21402(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11113
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$25002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11114
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$25102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 11115
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$11600(Lorg/telegram/ui/PhotoViewer;F)V

    .line 11116
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v3}, Lorg/telegram/ui/PhotoViewer;->access$26802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 11117
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$58;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
