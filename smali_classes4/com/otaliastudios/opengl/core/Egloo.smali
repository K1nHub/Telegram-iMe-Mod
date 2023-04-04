.class public final Lcom/otaliastudios/opengl/core/Egloo;
.super Ljava/lang/Object;
.source "Egloo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEgloo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Egloo.kt\ncom/otaliastudios/opengl/core/Egloo\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n+ 3 misc.kt\ncom/otaliastudios/opengl/internal/MiscKt\n+ 4 egl.kt\ncom/otaliastudios/opengl/internal/EglKt\n*L\n1#1,87:1\n109#2:88\n13#3:89\n13#3:91\n13#3:92\n11#3:96\n68#4:90\n48#4:93\n47#4:94\n49#4:95\n*S KotlinDebug\n*F\n+ 1 Egloo.kt\ncom/otaliastudios/opengl/core/Egloo\n*L\n43#1:88\n46#1:89\n59#1:91\n71#1:92\n85#1:96\n56#1:90\n82#1:93\n83#1:94\n84#1:95\n*E\n"
.end annotation


# static fields
.field public static final IDENTITY_MATRIX:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/otaliastudios/opengl/core/Egloo;

    invoke-direct {v0}, Lcom/otaliastudios/opengl/core/Egloo;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 35
    invoke-static {v0}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->makeIdentity([F)[F

    .line 34
    sput-object v0, Lcom/otaliastudios/opengl/core/Egloo;->IDENTITY_MATRIX:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkEglError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "opName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .line 57
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_SUCCESS()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": EGL error 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/otaliastudios/opengl/internal/MiscKt;->intToHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Egloo"

    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkGlError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "opName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 44
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_NO_ERROR()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/otaliastudios/opengl/internal/MiscKt;->intToHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/otaliastudios/opengl/internal/MiscKt;->gluErrorString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Egloo"

    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final checkGlProgramLocation(ILjava/lang/String;)V
    .locals 1

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p0, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to locate "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in program"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Egloo"

    .line 13
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
