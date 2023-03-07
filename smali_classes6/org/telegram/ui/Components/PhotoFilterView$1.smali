.class Lorg/telegram/ui/Components/PhotoFilterView$1;
.super Ljava/lang/Object;
.source "PhotoFilterView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoEditTextureView;Landroid/graphics/Bitmap;ILorg/telegram/messenger/MediaController$SavedFilterState;Lorg/telegram/ui/Components/PaintingOverlay;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoFilterView;


# direct methods
.method public static synthetic $r8$lambda$yjpuZOOomPLHgOCI6Ch_2XFXAGo(Lorg/telegram/ui/Components/PhotoFilterView$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterView$1;->lambda$onSurfaceTextureSizeChanged$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureSizeChanged$0()V
    .locals 3

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(ZZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    new-instance v1, Lorg/telegram/ui/Components/FilterGLThread;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->access$100(Lorg/telegram/ui/Components/PhotoFilterView;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v3}, Lorg/telegram/ui/Components/PhotoFilterView;->access$200(Lorg/telegram/ui/Components/PhotoFilterView;)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/PhotoFilterView;->access$300(Lorg/telegram/ui/Components/PhotoFilterView;)Z

    move-result v4

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/telegram/ui/Components/FilterGLThread;-><init>(Landroid/graphics/SurfaceTexture;Landroid/graphics/Bitmap;IZ)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread;

    .line 356
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterGLThread;->setFilterGLThreadDelegate(Lorg/telegram/ui/Components/FilterShaders$FilterShadersDelegate;)V

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/FilterGLThread;->setSurfaceTextureSize(II)V

    .line 358
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p3, p2}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(ZZZ)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 377
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 378
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterGLThread;->shutdown()V

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->access$002(Lorg/telegram/ui/Components/PhotoFilterView;Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/FilterGLThread;->setSurfaceTextureSize(II)V

    .line 366
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3}, Lorg/telegram/ui/Components/FilterGLThread;->requestRender(ZZZ)V

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterView$1;->this$0:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->access$000(Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/FilterGLThread;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/PhotoFilterView$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/PhotoFilterView$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PhotoFilterView$1;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
