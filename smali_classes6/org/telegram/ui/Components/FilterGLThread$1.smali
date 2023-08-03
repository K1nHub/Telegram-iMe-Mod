.class Lorg/telegram/ui/Components/FilterGLThread$1;
.super Ljava/lang/Object;
.source "FilterGLThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterGLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FilterGLThread;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FilterGLThread;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$000(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$100(Lorg/telegram/ui/Components/FilterGLThread;)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$200(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$300(Lorg/telegram/ui/Components/FilterGLThread;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$300(Lorg/telegram/ui/Components/FilterGLThread;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$400(Lorg/telegram/ui/Components/FilterGLThread;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$500(Lorg/telegram/ui/Components/FilterGLThread;)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/FilterGLThread;->access$202(Lorg/telegram/ui/Components/FilterGLThread;Z)Z

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$400(Lorg/telegram/ui/Components/FilterGLThread;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FilterShaders;->onVideoFrameUpdate([F)V

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->access$702(Lorg/telegram/ui/Components/FilterGLThread;Z)Z

    .line 377
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$800(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 381
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$700(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1000(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$1100(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v3

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSkinSmoothPass()Z

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawEnhancePass()V

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;

    move-result-object v0

    if-nez v0, :cond_4

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSharpenPass()V

    .line 388
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawCustomParamsPass()V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/FilterShaders;->drawBlurPass()Z

    move-result v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$1202(Lorg/telegram/ui/Components/FilterGLThread;Z)Z

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->access$1302(Lorg/telegram/ui/Components/FilterGLThread;Z)Z

    .line 393
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1300(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1400(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$1500(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v3

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const v0, 0x8d40

    .line 395
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1600(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 398
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 399
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterGLThread;->access$1200(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v4

    xor-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/FilterShaders;->getRenderTexture(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1700(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1800(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1800(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1900(Lorg/telegram/ui/Components/FilterGLThread;)Ljava/nio/FloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1900(Lorg/telegram/ui/Components/FilterGLThread;)Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    :goto_0
    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$2000(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$2000(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 406
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$2300(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterGLThread;->access$2100(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterGLThread;->access$2200(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_7
    return-void
.end method
