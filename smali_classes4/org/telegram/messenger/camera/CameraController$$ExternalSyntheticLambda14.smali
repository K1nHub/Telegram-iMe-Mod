.class public final synthetic Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/camera/CameraSession;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/messenger/camera/CameraSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraController$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/messenger/camera/CameraSession;

    invoke-static {v0}, Lorg/telegram/messenger/camera/CameraController;->$r8$lambda$kj2DrEzEPNF5ccuFnKAxRKeKTNI(Lorg/telegram/messenger/camera/CameraSession;)V

    return-void
.end method
