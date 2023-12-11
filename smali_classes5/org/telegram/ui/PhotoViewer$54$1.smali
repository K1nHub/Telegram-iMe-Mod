.class Lorg/telegram/ui/PhotoViewer$54$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$54;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$54;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$54;)V
    .locals 0

    .line 10619
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 10628
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onAppeared()V

    .line 10629
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->onShow()V

    .line 10631
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$20802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 10632
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget p1, p1, Lorg/telegram/ui/PhotoViewer$54;->val$mode:I

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$2502(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10633
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$8800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CaptionPhotoViewer;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 10634
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object p1

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    .line 10635
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$24700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    if-eq v3, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 10637
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    .line 10638
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$24802(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10640
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$3102(Lorg/telegram/ui/PhotoViewer;I)I

    .line 10641
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21402(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10642
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$25002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10643
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->access$25102(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10644
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$9902(Lorg/telegram/ui/PhotoViewer;F)F

    .line 10645
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9900(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$11600(Lorg/telegram/ui/PhotoViewer;F)V

    .line 10646
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->access$26802(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 10647
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 10622
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$24500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10623
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$54$1;->this$1:Lorg/telegram/ui/PhotoViewer$54;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$54;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
