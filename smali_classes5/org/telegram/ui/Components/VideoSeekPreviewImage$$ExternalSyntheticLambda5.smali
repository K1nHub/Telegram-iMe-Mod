.class public final synthetic Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/VideoSeekPreviewImage;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/VideoSeekPreviewImage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/VideoSeekPreviewImage;

    return-void
.end method


# virtual methods
.method public final didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/VideoSeekPreviewImage$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/VideoSeekPreviewImage;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/VideoSeekPreviewImage;->$r8$lambda$AX9wX1EKYo2z1x55Q4IaM7DxN6k(Lorg/telegram/ui/Components/VideoSeekPreviewImage;Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public synthetic onAnimationReady(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate$-CC;->$default$onAnimationReady(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;Lorg/telegram/messenger/ImageReceiver;)V

    return-void
.end method
