.class public final synthetic Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/camera/CameraController;

.field public final synthetic f$1:Landroid/hardware/Camera;

.field public final synthetic f$2:Lorg/telegram/messenger/camera/CameraSession;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/io/File;

.field public final synthetic f$5:Lorg/telegram/messenger/camera/CameraInfo;

.field public final synthetic f$6:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

.field public final synthetic f$7:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/Camera;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/messenger/camera/CameraSession;

    iput-boolean p4, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$3:Z

    iput-object p5, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$4:Ljava/io/File;

    iput-object p6, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$5:Lorg/telegram/messenger/camera/CameraInfo;

    iput-object p7, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$6:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    iput-object p8, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$7:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/Camera;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/messenger/camera/CameraSession;

    iget-boolean v3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$3:Z

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$4:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$5:Lorg/telegram/messenger/camera/CameraInfo;

    iget-object v6, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$6:Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;

    iget-object v7, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda6;->f$7:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/camera/CameraController;->$r8$lambda$Ds6dRasVmBqCAyzH5i-5gI5RvwA(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;ZLjava/io/File;Lorg/telegram/messenger/camera/CameraInfo;Lorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;)V

    return-void
.end method
