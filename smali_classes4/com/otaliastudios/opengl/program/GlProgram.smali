.class public abstract Lcom/otaliastudios/opengl/program/GlProgram;
.super Ljava/lang/Object;
.source "GlProgram.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlProgram$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;


# instance fields
.field private final fragmentShader:Ljava/lang/String;

.field private handle:I

.field private final vertexShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "vertexShader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentShader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->vertexShader:Ljava/lang/String;

    iput-object p2, p0, Lcom/otaliastudios/opengl/program/GlProgram;->fragmentShader:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/otaliastudios/opengl/program/GlProgram;->createProgram()I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    return-void
.end method

.method private final createProgram()I
    .locals 5

    .line 32
    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    iget-object v1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->fragmentShader:Ljava/lang/String;

    const v2, 0x8b30

    invoke-static {v0, v2, v1}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;->access$loadShader(Lcom/otaliastudios/opengl/program/GlProgram$Companion;ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const v2, 0x8b31

    .line 34
    iget-object v3, p0, Lcom/otaliastudios/opengl/program/GlProgram;->vertexShader:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;->access$loadShader(Lcom/otaliastudios/opengl/program/GlProgram$Companion;ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    const-string v3, "glCreateProgram"

    .line 38
    invoke-static {v3}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 42
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v0, "glAttachShader"

    .line 43
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 44
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 45
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 46
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v3, 0x8b82

    const/4 v4, 0x0

    .line 48
    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 49
    aget v1, v1, v4

    if-ne v1, v0, :cond_0

    return v2

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not link program: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not load vertex shader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not load fragment shader"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic draw$default(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;[FILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getModelMatrix()[F

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlProgram;->draw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: draw"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final draw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/otaliastudios/opengl/program/GlProgram;->draw$default(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;[FILjava/lang/Object;)V

    return-void
.end method

.method public final draw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelViewProjectionMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draw start"

    .line 68
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 70
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlProgram;->onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/otaliastudios/opengl/program/GlProgram;->onDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/otaliastudios/opengl/program/GlProgram;->onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V

    const/4 p1, 0x0

    .line 76
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "draw end"

    .line 77
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method protected final getAttribHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/otaliastudios/opengl/program/GlHandle;->Companion:Lcom/otaliastudios/opengl/program/GlHandle$Companion;

    iget v1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlHandle$Companion;->getAttrib(ILjava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;

    move-result-object p1

    return-object p1
.end method

.method protected final getUniformHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/otaliastudios/opengl/program/GlHandle;->Companion:Lcom/otaliastudios/opengl/program/GlHandle$Companion;

    iget v1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlHandle$Companion;->getUniform(ILjava/lang/String;)Lcom/otaliastudios/opengl/program/GlHandle;

    move-result-object p1

    return-object p1
.end method

.method protected onDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->draw()V

    return-void
.end method

.method protected onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "modelViewProjectionMatrix"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 59
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 60
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 61
    iput v1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    :cond_0
    return-void
.end method
