.class final Lcom/otaliastudios/opengl/program/GlShader$Companion;
.super Ljava/lang/Object;
.source "GlShader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/opengl/program/GlShader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlShader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlShader.kt\ncom/otaliastudios/opengl/program/GlShader$Companion\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,30:1\n76#2:31\n77#2:32\n78#2:33\n82#2:34\n80#2:35\n79#2:36\n*S KotlinDebug\n*F\n+ 1 GlShader.kt\ncom/otaliastudios/opengl/program/GlShader$Companion\n*L\n16#1:31\n18#1:32\n19#1:33\n21#1:34\n23#1:35\n24#1:36\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/otaliastudios/opengl/program/GlShader$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$compile(Lcom/otaliastudios/opengl/program/GlShader$Companion;ILjava/lang/String;)I
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlShader$Companion;->compile(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final compile(ILjava/lang/String;)I
    .locals 4

    .line 16
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 76
    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "glCreateShader type="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 77
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 78
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 21
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_COMPILE_STATUS()I

    move-result v2

    const/4 v3, 0x0

    .line 82
    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 22
    aget v1, v1, v3

    if-eqz v1, :cond_0

    return v0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile shader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' source: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
