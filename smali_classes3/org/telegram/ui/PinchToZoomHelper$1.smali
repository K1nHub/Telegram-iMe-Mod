.class Lorg/telegram/ui/PinchToZoomHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PinchToZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PinchToZoomHelper;->finishZoom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PinchToZoomHelper;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PinchToZoomHelper;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper$1;->this$0:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 285
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper$1;->this$0:Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v0, p1, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 286
    iput-object v0, p1, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    .line 287
    invoke-virtual {p1}, Lorg/telegram/ui/PinchToZoomHelper;->clear()V

    :cond_0
    return-void
.end method
