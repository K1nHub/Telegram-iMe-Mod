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

    .line 1314
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPreDraw$0()V
    .locals 2

    .line 1321
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1322
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4502(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPreDraw$1()V
    .locals 1

    .line 1338
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5700(Lorg/telegram/ui/PhotoViewer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 1317
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$5000(Lorg/telegram/ui/PhotoViewer;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1319
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4900(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    new-instance v0, Lorg/telegram/ui/PhotoViewer$8$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$8$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PhotoViewer$8$1;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1329
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1331
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$4500(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$4502(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1337
    :cond_1
    :goto_0
    new-instance v0, Lorg/telegram/ui/PhotoViewer$8$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$8$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$8$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$8$1;->this$1:Lorg/telegram/ui/PhotoViewer$8;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$8;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$5602(Lorg/telegram/ui/PhotoViewer;I)I

    const/4 v0, 0x1

    return v0
.end method
