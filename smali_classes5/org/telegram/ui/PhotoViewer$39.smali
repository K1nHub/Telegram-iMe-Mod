.class Lorg/telegram/ui/PhotoViewer$39;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->cropMirror()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 7839
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 7842
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$20802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 7843
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 7846
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoCropView;->mirror()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7847
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20900(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogFloatingButton:I

    invoke-static {v1, v2}, Lorg/telegram/ui/PhotoViewer;->access$14000(Lorg/telegram/ui/PhotoViewer;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 7849
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$20900(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 7851
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21102(Lorg/telegram/ui/PhotoViewer;F)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->access$21002(Lorg/telegram/ui/PhotoViewer;F)F

    .line 7852
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$39;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
