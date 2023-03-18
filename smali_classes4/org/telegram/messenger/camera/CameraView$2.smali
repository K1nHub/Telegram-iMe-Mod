.class Lorg/telegram/messenger/camera/CameraView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraView;->startSwitchingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/camera/CameraView;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/camera/CameraView;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 230
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 231
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/messenger/camera/CameraView;->flipAnimator:Landroid/animation/ValueAnimator;

    .line 232
    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$000(Lorg/telegram/messenger/camera/CameraView;)Landroid/view/TextureView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 233
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$000(Lorg/telegram/messenger/camera/CameraView;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setRotationX(F)V

    .line 234
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$000(Lorg/telegram/messenger/camera/CameraView;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setRotationY(F)V

    .line 235
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$000(Lorg/telegram/messenger/camera/CameraView;)Landroid/view/TextureView;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 236
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$000(Lorg/telegram/messenger/camera/CameraView;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 238
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$100(Lorg/telegram/messenger/camera/CameraView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 240
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    iget-boolean v0, p1, Lorg/telegram/messenger/camera/CameraView;->flipHalfReached:Z

    if-nez v0, :cond_0

    .line 241
    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$100(Lorg/telegram/messenger/camera/CameraView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 242
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/messenger/camera/CameraView;->flipHalfReached:Z

    .line 244
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$2;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
