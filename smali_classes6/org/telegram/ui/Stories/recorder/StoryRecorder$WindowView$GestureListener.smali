.class final Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;
.super Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;
.source "StoryRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/GestureDetectorFixDoubleTap$OnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Lorg/telegram/ui/Stories/recorder/StoryRecorder$1;)V
    .locals 0

    .line 1125
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)V

    return-void
.end method


# virtual methods
.method public hasDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1283
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isTouch()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1259
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1262
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->switchCamera()V

    .line 1263
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/RecordControl;->rotateFlip(F)V

    .line 1264
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 1265
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1266
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashIn(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1268
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1275
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1276
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->clearTapFocus()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1128
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$3902(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F

    .line 1129
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4002(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1215
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_f

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isTouch()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isDualTouch()Z

    move-result p1

    if-nez p1, :cond_f

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ZoomControlView;->isTouch()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_5

    .line 1218
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4902(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Z)Z

    .line 1219
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$5002(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Z)Z

    .line 1221
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1222
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY1()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    cmpl-float p1, p4, v1

    if-lez p1, :cond_3

    .line 1223
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p1, p1, p4

    if-gtz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)F

    move-result p1

    const p4, 0x3ecccccd    # 0.4f

    cmpl-float p1, p1, p4

    if-lez p1, :cond_5

    .line 1224
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->close(Z)V

    goto :goto_0

    .line 1226
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    :goto_0
    move p1, v0

    goto/16 :goto_3

    .line 1229
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1230
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1231
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v2

    if-nez v2, :cond_8

    cmpg-float p4, p4, v1

    if-gez p4, :cond_8

    move p4, v0

    goto :goto_1

    :cond_8
    move p4, p2

    :goto_1
    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto :goto_0

    .line 1234
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p4

    if-nez p4, :cond_a

    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p4

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->getPadding()I

    move-result v1

    int-to-float v1, v1

    cmpg-float p4, p4, v1

    if-gez p4, :cond_a

    move p4, v0

    goto :goto_2

    :cond_a
    move p4, p2

    :goto_2
    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto :goto_0

    :cond_b
    move p1, p2

    .line 1239
    :goto_3
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 1240
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    move-result-object p4

    invoke-virtual {p4, p3}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->stopScroll(F)Z

    move-result p3

    if-nez p3, :cond_d

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    move v0, p2

    :cond_d
    :goto_4
    move p1, v0

    .line 1242
    :cond_e
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1243
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1244
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p3, p3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    return p1

    :cond_f
    :goto_5
    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1156
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_d

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->isTouch()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->isDualTouch()Z

    move-result p1

    if-nez p1, :cond_d

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$3200(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ZoomControlView;->isTouch()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_3

    .line 1159
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4600(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_3

    .line 1162
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_4

    .line 1163
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$3916(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F

    .line 1164
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$3900(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_4

    .line 1165
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1168
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1169
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p1, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1170
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    goto :goto_0

    .line 1173
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4702(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F

    goto :goto_1

    .line 1171
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->getTranslationY1()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4702(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F

    .line 1175
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/GalleryListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1176
    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 1178
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v0, p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4724(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F

    .line 1179
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    neg-int v0, p1

    int-to-float v0, v0

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p4, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4702(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F

    .line 1180
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p4

    if-ne p4, p2, :cond_8

    .line 1181
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p4, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4702(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F

    .line 1183
    :cond_8
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result p4

    cmpl-float p4, p4, v1

    if-ltz p4, :cond_9

    .line 1184
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v0

    invoke-virtual {p4, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 1185
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    if-eqz p4, :cond_b

    .line 1186
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    int-to-float p1, p1

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_2

    .line 1189
    :cond_9
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object p4

    invoke-virtual {p4, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;->setTranslationY(F)V

    .line 1190
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    if-nez p4, :cond_a

    .line 1191
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 1193
    :cond_a
    iget-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p4, p4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object p4

    int-to-float p1, p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4700(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1196
    :cond_b
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 1197
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4016(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;F)F

    .line 1198
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->access$4000(Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p4, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float p1, p1, p4

    if-ltz p1, :cond_c

    .line 1199
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1202
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1203
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/recorder/PhotoVideoSwitcherView;->scrollX(F)V

    :cond_d
    :goto_3
    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1250
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1251
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->allowToTapFocus()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3002(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$3102(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)Z

    .line 1142
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->hasDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1143
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 1147
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$4100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/GalleryListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView;->top()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 1148
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView$GestureListener;->this$1:Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    return v2

    :cond_1
    return v1
.end method
