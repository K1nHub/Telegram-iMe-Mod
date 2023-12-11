.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatAttachAlertPhotoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->openCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 2133
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2136
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 2137
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$4502(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;Z)Z

    .line 2138
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v0, 0x15

    if-eqz p1, :cond_1

    .line 2139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_0

    .line 2140
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    goto :goto_0

    .line 2142
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2145
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$3700(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2146
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->onCameraOpened()V

    .line 2148
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$17;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz p1, :cond_3

    const/16 v0, 0x404

    .line 2149
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_3
    return-void
.end method
