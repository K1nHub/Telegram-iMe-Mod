.class public Lcom/otaliastudios/opengl/draw/GlRect;
.super Lcom/otaliastudios/opengl/draw/Gl2dDrawable;
.source "GlRect.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/draw/GlRect$Companion;
    }
.end annotation


# static fields
.field private static final FULL_RECTANGLE_COORDS:[F


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

    .line 16
    fill-array-data v0, :array_0

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

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v0}, Lcom/otaliastudios/opengl/extensions/BuffersKt;->floatBufferOf([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/draw/GlRect;->vertexArray:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexCount()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "glDrawArrays"

    .line 54
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public getVertexArray()Ljava/nio/FloatBuffer;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/otaliastudios/opengl/draw/GlRect;->vertexArray:Ljava/nio/FloatBuffer;

    return-object v0
.end method
