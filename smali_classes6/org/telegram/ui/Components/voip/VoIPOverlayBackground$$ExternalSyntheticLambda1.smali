.class public final synthetic Lorg/telegram/ui/Components/voip/VoIPOverlayBackground$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageReceiver$BitmapHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;->$r8$lambda$U0wE54WXstdYnKsR2bo6OJq6N0Q(Lorg/telegram/ui/Components/voip/VoIPOverlayBackground;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageReceiver$BitmapHolder;)V

    return-void
.end method
