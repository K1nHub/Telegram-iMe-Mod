.class Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoScreenPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;->onRenderedFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3$1;->this$1:Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 570
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3$1;->this$1:Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview$3;->this$0:Lorg/telegram/ui/Components/Premium/VideoScreenPreview;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/Premium/VideoScreenPreview;->firstFrameRendered:Z

    .line 571
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
