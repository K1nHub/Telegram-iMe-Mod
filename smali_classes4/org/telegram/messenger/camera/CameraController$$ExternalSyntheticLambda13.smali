.class public final synthetic Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/camera/CameraController;

.field public final synthetic f$1:Lorg/telegram/messenger/camera/CameraSession;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/messenger/camera/CameraSession;

    iput-boolean p3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;->f$2:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/messenger/camera/CameraSession;

    iget-boolean v2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;->f$2:Z

    iget-boolean v3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda13;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/camera/CameraController;->$r8$lambda$pCELGPPszWrzA4Ub7gMKz0zK-yg(Lorg/telegram/messenger/camera/CameraController;Lorg/telegram/messenger/camera/CameraSession;ZZ)V

    return-void
.end method
