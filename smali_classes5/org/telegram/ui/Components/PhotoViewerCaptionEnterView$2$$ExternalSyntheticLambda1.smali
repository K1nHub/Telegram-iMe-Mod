.class public final synthetic Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$2;->$r8$lambda$8_v-Ttj1fO_VGdHMHnwYAlCMyy8(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)V

    return-void
.end method
