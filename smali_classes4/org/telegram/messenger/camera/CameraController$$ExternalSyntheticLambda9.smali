.class public final synthetic Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/camera/CameraController;

.field public final synthetic f$1:Lorg/telegram/messenger/camera/CameraController$ICameraView;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/messenger/camera/CameraController$ICameraView;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$2:Ljava/io/File;

    iput-boolean p4, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$3:Z

    iput-object p5, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/messenger/camera/CameraController$ICameraView;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$2:Ljava/io/File;

    iget-boolean v3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$3:Z

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda9;->f$4:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/camera/CameraController;->$r8$lambda$GEUhCn5EkdX4_lONVDHO6QqOecc(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraController$ICameraView;Ljava/io/File;ZLjava/lang/Runnable;)V

    return-void
.end method
