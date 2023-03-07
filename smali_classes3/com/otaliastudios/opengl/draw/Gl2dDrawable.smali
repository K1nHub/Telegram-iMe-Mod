.class public abstract Lcom/otaliastudios/opengl/draw/Gl2dDrawable;
.super Lcom/otaliastudios/opengl/draw/GlDrawable;
.source "Gl2dDrawable.kt"


# instance fields
.field private final coordsPerVertex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/otaliastudios/opengl/draw/GlDrawable;-><init>()V

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->coordsPerVertex:I

    return-void
.end method


# virtual methods
.method public final getCoordsPerVertex()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/otaliastudios/opengl/draw/Gl2dDrawable;->coordsPerVertex:I

    return v0
.end method
