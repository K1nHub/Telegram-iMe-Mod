.class Lorg/telegram/ui/Components/InstantCameraView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InstantCameraView;->lambda$new$0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 379
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$7200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$7200(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 382
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 383
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {p1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3400(Lorg/telegram/ui/Components/InstantCameraView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 384
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$7302(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    .line 385
    iget-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$6;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
