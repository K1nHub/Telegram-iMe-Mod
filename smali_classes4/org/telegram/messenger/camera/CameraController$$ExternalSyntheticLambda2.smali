.class public final synthetic Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Lorg/telegram/messenger/camera/CameraSession;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/camera/CameraSession;

    iput-object p3, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;->f$1:Lorg/telegram/messenger/camera/CameraSession;

    iget-object v2, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/camera/CameraController;->$r8$lambda$dGn5yTNQpPzqjbCpejmrMU-D5gs(Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraSession;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
