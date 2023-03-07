.class public final synthetic Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/camera/CameraController;

.field public final synthetic f$1:Landroid/hardware/Camera;

.field public final synthetic f$2:Lorg/telegram/messenger/camera/CameraSession;

.field public final synthetic f$3:Lorg/telegram/messenger/camera/CameraView;

.field public final synthetic f$4:Ljava/io/File;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/Camera;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/messenger/camera/CameraSession;

    iput-object p4, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/messenger/camera/CameraView;

    iput-object p5, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$4:Ljava/io/File;

    iput-object p6, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/messenger/camera/CameraController;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/Camera;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$3:Lorg/telegram/messenger/camera/CameraView;

    iget-object v4, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$4:Ljava/io/File;

    iget-object v5, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda5;->f$5:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/camera/CameraController;->$r8$lambda$MBEIrkJekWsRqtgsSUlb2pgAxiY(Lorg/telegram/messenger/camera/CameraController;Landroid/hardware/Camera;Lorg/telegram/messenger/camera/CameraSession;Lorg/telegram/messenger/camera/CameraView;Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method
