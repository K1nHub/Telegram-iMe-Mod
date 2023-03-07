.class Lorg/telegram/ui/PhotoViewer$55$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$55;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$55;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$55;)V
    .locals 0

    .line 8936
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8939
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21302(Lorg/telegram/ui/PhotoViewer;Z)Z

    .line 8940
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 8941
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 8943
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8944
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 8946
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8947
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$55$1;->this$1:Lorg/telegram/ui/PhotoViewer$55;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$55;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$4100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_2
    return-void
.end method
