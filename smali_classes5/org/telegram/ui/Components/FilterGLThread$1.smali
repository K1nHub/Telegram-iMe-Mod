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

    .line 313
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$000(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$200(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterGLThread;->access$100(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$300(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterGLThread;->access$100(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$100(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterGLThread;->access$400(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterGLThread;->access$300(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$300(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterGLThread;->access$200(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eglMakeCurrent failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterGLThread;->access$100(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 329
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$500(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$600(Lorg/telegram/ui/Components/FilterGLThread;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$700(Lorg/telegram/ui/Components/FilterGLThread;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$800(Lorg/telegram/ui/Components/FilterGLThread;)V

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/FilterGLThread;->access$502(Lorg/telegram/ui/Components/FilterGLThread;Z)Z

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$700(Lorg/telegram/ui/Components/FilterGLThread;)[F

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FilterShaders;->onVideoFrameUpdate([F)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/FilterGLThread;->access$1002(Lorg/telegram/ui/Components/FilterGLThread;Z)Z

    .line 338
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1100(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 342
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1200(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1000(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 343
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1300(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$1400(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v3

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSkinSmoothPass()Z

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawEnhancePass()V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1200(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterGLThread$FilterGLThreadVideoDelegate;

    move-result-object v0

    if-nez v0, :cond_7

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawSharpenPass()V

    .line 349
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->drawCustomParamsPass()V

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/FilterShaders;->drawBlurPass()Z

    move-result v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$1502(Lorg/telegram/ui/Components/FilterGLThread;Z)Z

    .line 353
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1600(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$1700(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v3

    invoke-static {v2, v2, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const v0, 0x8d40

    .line 354
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1800(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v0, 0x84c0

    .line 357
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 358
    iget-object v3, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v3}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v4}, Lorg/telegram/ui/Components/FilterGLThread;->access$1500(Lorg/telegram/ui/Components/FilterGLThread;)Z

    move-result v4

    xor-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/FilterShaders;->getRenderTexture(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$1900(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$2000(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$2000(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$2100(Lorg/telegram/ui/Components/FilterGLThread;)Ljava/nio/FloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$2100(Lorg/telegram/ui/Components/FilterGLThread;)Ljava/nio/FloatBuffer;

    move-result-object v0

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    :goto_0
    move-object v8, v0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$2200(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$2200(Lorg/telegram/ui/Components/FilterGLThread;)I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$900(Lorg/telegram/ui/Components/FilterGLThread;)Lorg/telegram/ui/Components/FilterShaders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterShaders;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 365
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterGLThread;->access$100(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterGLThread;->access$400(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FilterGLThread$1;->this$0:Lorg/telegram/ui/Components/FilterGLThread;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterGLThread;->access$300(Lorg/telegram/ui/Components/FilterGLThread;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method
