.class public abstract Lcom/otaliastudios/opengl/draw/Gl2dDrawable;
.super Lcom/otaliastudios/opengl/draw/GlDrawable;
.source "Gl2dDrawable.kt"


# instance fields
.field private final coordsPerVertex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;-><init>()V

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->coordsPerVertex:I

    return-void
.end method


# virtual methods
.method public final getBounds(Landroid/graphics/RectF;)V
    .locals 7

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v3

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->get()F

    move-result v5

    .line 19
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_0

    .line 20
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 21
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1

    .line 23
    :cond_0
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 24
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final getCoordsPerVertex()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->coordsPerVertex:I

    return v0
.end method
