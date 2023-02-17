.class public Lcom/otaliastudios/opengl/program/GlTextureProgram;
.super Lcom/otaliastudios/opengl/program/GlProgram;
.source "GlTextureProgram.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlTextureProgram$Companion;
    }
.end annotation


# static fields
.field private static final FULL_COORDINATES:Ljava/nio/FloatBuffer;


# instance fields
.field private final textureCoordsHandle:Lcom/otaliastudios/opengl/program/GlHandle;

.field private final textureId:I

.field private final textureTarget:I

.field private textureTransform:[F

.field private final textureTransformHandle:Lcom/otaliastudios/opengl/program/GlHandle;

.field private final textureUnit:I

.field private final vertexMvpMatrixHandle:Lcom/otaliastudios/opengl/program/GlHandle;

.field private final vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlTextureProgram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlTextureProgram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 97
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/otaliastudios/opengl/extensions/BuffersKt;->floatBufferOf([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->FULL_COORDINATES:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureUnit:I

    const v0, 0x8d65

    .line 18
    iput v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTarget:I

    const-string v1, "aPosition"

    .line 20
    invoke-virtual {p0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;->getAttribHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    const-string v1, "uMVPMatrix"

    .line 21
    invoke-virtual {p0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;->getUniformHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexMvpMatrixHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    const-string v1, "aTextureCoord"

    .line 22
    invoke-virtual {p0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;->getAttribHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    const-string v1, "uTexMatrix"

    .line 23
    invoke-virtual {p0, v1}, Lcom/otaliastudios/opengl/program/GlProgram;->getUniformHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransformHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 29
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v1, "glGenTextures"

    .line 30
    invoke-static {v1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 31
    aget v1, v2, v3

    iput v1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureId:I

    .line 33
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 34
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glBindTexture "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    const/16 p1, 0x2600

    int-to-float p1, p1

    const/16 v1, 0x2801

    .line 37
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2601

    int-to-float p1, p1

    const/16 v1, 0x2800

    .line 38
    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v1, 0x812f

    .line 39
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 40
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string p1, "glTexParameter"

    .line 41
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 43
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const p1, 0x84c0

    .line 44
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string p1, "init end"

    .line 45
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/otaliastudios/opengl/core/Egloo;->getIDENTITY_MATRIX()[F

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransform:[F

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const p1, 0x84c0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/otaliastudios/opengl/program/GlTextureProgram;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getTextureId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureId:I

    return v0
.end method

.method public final getTextureTransform()[F
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransform:[F

    return-object v0
.end method

.method protected onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Lcom/otaliastudios/opengl/program/GlProgram;->onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    .line 85
    iget-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/program/GlHandle;->getValue()I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 86
    iget-object p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/program/GlHandle;->getValue()I

    move-result p1

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 87
    iget p1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTarget:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const p1, 0x84c0

    .line 88
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string p1, "onPostDraw end"

    .line 89
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 7

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelViewProjectionMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlProgram;->onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    .line 53
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureUnit:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 54
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTarget:I

    iget v1, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 57
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexMvpMatrixHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlHandle;->getValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p2, "glUniformMatrix4fv"

    .line 59
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransformHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlHandle;->getValue()I

    move-result v0

    .line 63
    iget-object v3, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureTransform:[F

    .line 62
    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 64
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/program/GlHandle;->getValue()I

    move-result p2

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p2, "glEnableVertexAttribArray"

    .line 69
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->vertexPositionHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlHandle;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getCoordsPerVertex()I

    move-result v2

    .line 71
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexStride()I

    move-result v5

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v6

    const/16 v3, 0x1406

    const/4 v4, 0x0

    .line 70
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer"

    .line 72
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/program/GlHandle;->getValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 77
    invoke-static {p2}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/otaliastudios/opengl/program/GlTextureProgram;->textureCoordsHandle:Lcom/otaliastudios/opengl/program/GlHandle;

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/program/GlHandle;->getValue()I

    move-result v0

    .line 79
    sget-object v5, Lcom/otaliastudios/opengl/program/GlTextureProgram;->FULL_COORDINATES:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 78
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 80
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
