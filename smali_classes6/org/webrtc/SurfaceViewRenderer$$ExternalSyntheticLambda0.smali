.class public final synthetic Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/SurfaceViewRenderer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/SurfaceViewRenderer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/SurfaceViewRenderer;

    iput p2, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/SurfaceViewRenderer;

    iget v1, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/webrtc/SurfaceViewRenderer;->$r8$lambda$uj7L95NBBBpJVS0clP3By7sJwBs(Lorg/webrtc/SurfaceViewRenderer;II)V

    return-void
.end method
