.class public abstract Lcom/otaliastudios/opengl/draw/GlDrawable;
.super Lcom/otaliastudios/opengl/core/GlViewportAware;
.source "GlDrawable.kt"


# instance fields
.field private final modelMatrix:[F

.field private vertexArrayVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/otaliastudios/opengl/core/GlViewportAware;-><init>()V

    .line 16
    sget-object v0, Lcom/otaliastudios/opengl/core/Egloo;->IDENTITY_MATRIX:[F

    invoke-static {v0}, Lcom/otaliastudios/opengl/internal/MiscKt;->matrixClone([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/draw/GlDrawable;->modelMatrix:[F

    return-void
.end method


# virtual methods
.method public abstract draw()V
.end method

.method public abstract getCoordsPerVertex()I
.end method

.method public final getModelMatrix()[F
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/otaliastudios/opengl/draw/GlDrawable;->modelMatrix:[F

    return-object v0
.end method

.method public abstract getVertexArray()Ljava/nio/FloatBuffer;
.end method

.method public final getVertexArrayVersion()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/otaliastudios/opengl/draw/GlDrawable;->vertexArrayVersion:I

    return v0
.end method

.method public getVertexCount()I
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getCoordsPerVertex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getVertexStride()I
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getCoordsPerVertex()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
