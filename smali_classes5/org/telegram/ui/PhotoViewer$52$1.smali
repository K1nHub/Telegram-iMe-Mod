.class Lorg/telegram/ui/PhotoViewer$52$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$52;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$52;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$52;)V
    .locals 0

    .line 9611
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$52$1;->this$1:Lorg/telegram/ui/PhotoViewer$52;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 9614
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$52$1;->this$1:Lorg/telegram/ui/PhotoViewer$52;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21902(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 9615
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$52$1;->this$1:Lorg/telegram/ui/PhotoViewer$52;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 9616
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$52$1;->this$1:Lorg/telegram/ui/PhotoViewer$52;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 9618
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$52$1;->this$1:Lorg/telegram/ui/PhotoViewer$52;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9619
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$52$1;->this$1:Lorg/telegram/ui/PhotoViewer$52;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 9621
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$52$1;->this$1:Lorg/telegram/ui/PhotoViewer$52;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9622
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$52$1;->this$1:Lorg/telegram/ui/PhotoViewer$52;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$52;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_2
    return-void
.end method
