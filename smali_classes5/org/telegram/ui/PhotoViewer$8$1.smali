.class Lorg/telegram/ui/PhotoViewer$8$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$8;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$8;


# direct methods
.method public static synthetic $r8$lambda$cct2eWvf9zLoheGV6_Xk_EJD9EA(Lorg/telegram/ui/PhotoViewer$8$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$8$1;->lambda$onPreDraw$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$qV9LMZ4yShDlRXE6tCzHNVxg4N8(Lorg/telegram/ui/PhotoViewer$8$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$8$1;->lambda$onPreDraw$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer$8;)V
    .locals 0

    .line 1764
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPreDraw$0()V
    .locals 2

    .line 1771
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1773
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4600(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4600(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4602(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPreDraw$1()V
    .locals 1

    .line 1788
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5800(Lorg/telegram/ui/PhotoViewer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 1767
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5100(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1769
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5000(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    new-instance v0, Lorg/telegram/ui/PhotoViewer$8$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$8$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoViewer$8$1;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1779
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1780
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4800(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1781
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4600(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1782
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4600(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1783
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4602(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1787
    :cond_1
    :goto_0
    new-instance v0, Lorg/telegram/ui/PhotoViewer$8$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$8$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$8$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1792
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$5702(Lorg/telegram/ui/PhotoViewer;I)I

    const/4 v0, 0x1

    return v0
.end method
