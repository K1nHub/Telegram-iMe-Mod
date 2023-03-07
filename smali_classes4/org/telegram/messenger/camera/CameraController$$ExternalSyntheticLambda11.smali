.class public final synthetic Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/camera/CameraController;

.field public final synthetic f$1:Lorg/telegram/messenger/camera/CameraView;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/camera/CameraView;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;->f$2:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/camera/CameraView;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;->f$2:Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda11;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/camera/CameraController;->$r8$lambda$OIg-08s8VBv8tK2AV58cIqxuvlE(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method
