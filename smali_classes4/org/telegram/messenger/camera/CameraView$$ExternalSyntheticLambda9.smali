.class public final synthetic Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/camera/CameraView;

.field public final synthetic f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/camera/CameraView;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/messenger/camera/CameraView;

    iput-object p2, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda9;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/messenger/camera/CameraView$$ExternalSyntheticLambda9;->f$1:Landroid/os/Handler;

    invoke-static {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->$r8$lambda$JiLw9Ng8POmM_Hy-aAhna0gHwB8(Lorg/telegram/messenger/camera/CameraView;Landroid/os/Handler;)V

    return-void
.end method
