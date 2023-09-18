.class public final Lcom/otaliastudios/opengl/internal/GlKt;
.super Ljava/lang/Object;
.source "gl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ngl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,122:1\n114#1,7:123\n114#1,7:130\n114#1,7:137\n114#1,7:144\n114#1,7:151\n114#1,7:158\n*S KotlinDebug\n*F\n+ 1 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n42#1:123,7\n45#1:130,7\n55#1:137,7\n58#1:144,7\n66#1:151,7\n69#1:158,7\n*E\n"
.end annotation


# static fields
.field private static final GL_CLAMP_TO_EDGE:I

.field private static final GL_COMPILE_STATUS:I

.field private static final GL_FLOAT:I

.field private static final GL_FRAGMENT_SHADER:I

.field private static final GL_LINEAR:F

.field private static final GL_LINK_STATUS:I

.field private static final GL_NEAREST:F

.field private static final GL_NO_ERROR:I = 0x0

.field private static final GL_TEXTURE0:I

.field private static final GL_TEXTURE_EXTERNAL_OES:I

.field private static final GL_TEXTURE_MAG_FILTER:I

.field private static final GL_TEXTURE_MIN_FILTER:I

.field private static final GL_TEXTURE_WRAP_S:I

.field private static final GL_TEXTURE_WRAP_T:I

.field private static final GL_TRIANGLE_STRIP:I

.field private static final GL_TRUE:I = 0x1

.field private static final GL_VERTEX_SHADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x90d2

    .line 16
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    const/16 v0, 0x1401

    .line 19
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    const/16 v0, 0x1406

    .line 20
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_FLOAT:I

    const/16 v0, 0x1908

    .line 21
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    const/4 v0, 0x4

    .line 22
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    const/4 v0, 0x6

    .line 23
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    const/4 v0, 0x5

    .line 24
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TRIANGLE_STRIP:I

    const v0, 0x84c0

    .line 25
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE0:I

    const v0, 0x8d65

    .line 26
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_EXTERNAL_OES:I

    const/16 v0, 0x2801

    .line 27
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_MIN_FILTER:I

    const/16 v0, 0x2800

    .line 28
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_MAG_FILTER:I

    const/16 v0, 0x2802

    .line 29
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_WRAP_S:I

    const/16 v0, 0x2803

    .line 30
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_WRAP_T:I

    const v0, 0x812f

    .line 31
    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_CLAMP_TO_EDGE:I

    const/high16 v0, 0x46180000    # 9728.0f

    .line 32
    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_NEAREST:F

    const v0, 0x46180400    # 9729.0f

    .line 33
    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_LINEAR:F

    const v0, 0x8d40

    .line 34
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    const v0, 0x8cd5

    .line 35
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    const v0, 0x8ce0

    .line 36
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    const v0, 0x8b81

    .line 37
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_COMPILE_STATUS:I

    const v0, 0x8b82

    .line 38
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_LINK_STATUS:I

    const v0, 0x8b31

    .line 39
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_VERTEX_SHADER:I

    const v0, 0x8b30

    .line 40
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    sput v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_FRAGMENT_SHADER:I

    return-void
.end method

.method public static final getGL_CLAMP_TO_EDGE()I
    .locals 1

    .line 31
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_CLAMP_TO_EDGE:I

    return v0
.end method

.method public static final getGL_COMPILE_STATUS()I
    .locals 1

    .line 37
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_COMPILE_STATUS:I

    return v0
.end method

.method public static final getGL_FLOAT()I
    .locals 1

    .line 20
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_FLOAT:I

    return v0
.end method

.method public static final getGL_FRAGMENT_SHADER()I
    .locals 1

    .line 40
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_FRAGMENT_SHADER:I

    return v0
.end method

.method public static final getGL_LINEAR()F
    .locals 1

    .line 33
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_LINEAR:F

    return v0
.end method

.method public static final getGL_LINK_STATUS()I
    .locals 1

    .line 38
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_LINK_STATUS:I

    return v0
.end method

.method public static final getGL_NEAREST()F
    .locals 1

    .line 32
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_NEAREST:F

    return v0
.end method

.method public static final getGL_NO_ERROR()I
    .locals 1

    .line 18
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_NO_ERROR:I

    return v0
.end method

.method public static final getGL_TEXTURE0()I
    .locals 1

    .line 25
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE0:I

    return v0
.end method

.method public static final getGL_TEXTURE_EXTERNAL_OES()I
    .locals 1

    .line 26
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_EXTERNAL_OES:I

    return v0
.end method

.method public static final getGL_TEXTURE_MAG_FILTER()I
    .locals 1

    .line 28
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_MAG_FILTER:I

    return v0
.end method

.method public static final getGL_TEXTURE_MIN_FILTER()I
    .locals 1

    .line 27
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_MIN_FILTER:I

    return v0
.end method

.method public static final getGL_TEXTURE_WRAP_S()I
    .locals 1

    .line 29
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_WRAP_S:I

    return v0
.end method

.method public static final getGL_TEXTURE_WRAP_T()I
    .locals 1

    .line 30
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TEXTURE_WRAP_T:I

    return v0
.end method

.method public static final getGL_TRIANGLE_STRIP()I
    .locals 1

    .line 24
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TRIANGLE_STRIP:I

    return v0
.end method

.method public static final getGL_TRUE()I
    .locals 1

    .line 14
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_TRUE:I

    return v0
.end method

.method public static final getGL_VERTEX_SHADER()I
    .locals 1

    .line 39
    sget v0, Lcom/otaliastudios/opengl/internal/GlKt;->GL_VERTEX_SHADER:I

    return v0
.end method
