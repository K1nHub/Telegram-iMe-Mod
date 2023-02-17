.class Lorg/telegram/messenger/camera/CameraView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/camera/CameraView;->onFirstFrameRendered()V
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

    .line 1138
    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$3;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1141
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1142
    iget-object p1, p0, Lorg/telegram/messenger/camera/CameraView$3;->this$0:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p1}, Lorg/telegram/messenger/camera/CameraView;->access$100(Lorg/telegram/messenger/camera/CameraView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
