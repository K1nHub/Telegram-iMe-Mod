.class public Lcom/otaliastudios/opengl/draw/GlRect;
.super Lcom/otaliastudios/opengl/draw/Gl2dDrawable;
.source "GlRect.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/draw/GlRect$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlRect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlRect.kt\ncom/otaliastudios/opengl/draw/GlRect\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,74:1\n111#2:75\n*S KotlinDebug\n*F\n+ 1 GlRect.kt\ncom/otaliastudios/opengl/draw/GlRect\n*L\n71#1:75\n*E\n"
.end annotation


# static fields
.field private static final FULL_RECTANGLE_COORDS:[F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private vertexArray:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/draw/GlRect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/draw/GlRect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 17
    fill-array-data v0, :array_0

    .line 16
    sput-object v0, Lcom/otaliastudios/opengl/draw/GlRect;->FULL_RECTANGLE_COORDS:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;-><init>()V

    .line 23
    sget-object v0, Lcom/otaliastudios/opengl/draw/GlRect;->FULL_RECTANGLE_COORDS:[F

    array-length v1, v0

    invoke-static {v1}, Lcom/otaliastudios/opengl/types/BuffersJvmKt;->floatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 25
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    iput-object v1, p0, Lcom/otaliastudios/opengl/draw/GlRect;->vertexArray:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    const-string v0, "glDrawArrays start"

    .line 70
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TRIANGLE_STRIP()I

    move-result v0

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexCount()I

    move-result v1

    const/4 v2, 0x0

    .line 111
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays end"

    .line 72
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public getVertexArray()Ljava/nio/FloatBuffer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/otaliastudios/opengl/draw/GlRect;->vertexArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method
