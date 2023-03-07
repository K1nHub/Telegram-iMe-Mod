.class public final synthetic Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Lorg/telegram/messenger/camera/CameraInfo;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/camera/CameraInfo;

    iput-boolean p3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;->f$0:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/camera/CameraInfo;

    iget-boolean v2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Runnable;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/camera/CameraController;->$r8$lambda$FjYSQYVACrEh1jwd3CLFXH0YLqA(Ljava/io/File;Lorg/telegram/messenger/camera/CameraInfo;ZLjava/lang/Runnable;[BLandroid/hardware/Camera;)V

    return-void
.end method
