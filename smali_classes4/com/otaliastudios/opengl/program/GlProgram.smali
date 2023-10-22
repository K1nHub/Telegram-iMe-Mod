.class public Lcom/otaliastudios/opengl/program/GlProgram;
.super Ljava/lang/Object;
.source "GlProgram.kt"

# interfaces
.implements Lcom/otaliastudios/opengl/core/GlBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlProgram$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlProgram.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlProgram.kt\ncom/otaliastudios/opengl/program/GlProgram\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,122:1\n88#2:123\n87#2:126\n87#2:127\n13536#3,2:124\n*S KotlinDebug\n*F\n+ 1 GlProgram.kt\ncom/otaliastudios/opengl/program/GlProgram\n*L\n49#1:123\n56#1:126\n61#1:127\n50#1:124,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;


# instance fields
.field private final handle:I

.field private isReleased:Z

.field private final ownsHandle:Z

.field private final shaders:[Lcom/otaliastudios/opengl/program/GlShader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->Companion:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    return-void
.end method

.method protected varargs constructor <init>(IZ[Lcom/otaliastudios/opengl/program/GlShader;)V
    .locals 1

    const-string/jumbo v0, "shaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    .line 31
    iput-boolean p2, p0, Lcom/otaliastudios/opengl/program/GlProgram;->ownsHandle:Z

    .line 32
    iput-object p3, p0, Lcom/otaliastudios/opengl/program/GlProgram;->shaders:[Lcom/otaliastudios/opengl/program/GlShader;

    return-void
.end method

.method public static synthetic draw$default(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;[FILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->getModelMatrix()[F

    move-result-object p2

    .line 68
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlProgram;->draw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: draw"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bind()V
    .locals 1

    .line 56
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 87
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 57
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final draw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 2

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/otaliastudios/opengl/program/GlProgram;->draw$default(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;[FILjava/lang/Object;)V

    return-void
.end method

.method public final draw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelViewProjectionMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draw start"

    .line 70
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlProgram$draw$1;-><init>(Lcom/otaliastudios/opengl/program/GlProgram;Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V

    invoke-static {p0, v0}, Lcom/otaliastudios/opengl/core/GlBindableKt;->use(Lcom/otaliastudios/opengl/core/GlBindable;Lkotlin/jvm/functions/Function0;)V

    const-string p1, "draw end"

    .line 76
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method protected final getAttribHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;
    .locals 2

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->Companion:Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;

    iget v1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;->getAttrib(ILjava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object p1

    return-object p1
.end method

.method protected final getUniformHandle(Ljava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;
    .locals 2

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgramLocation;->Companion:Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;

    iget v1, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;->getUniform(ILjava/lang/String;)Lcom/otaliastudios/opengl/program/GlProgramLocation;

    move-result-object p1

    return-object p1
.end method

.method public onDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/otaliastudios/opengl/draw/GlDrawable;->draw()V

    return-void
.end method

.method public onPostDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPreDraw(Lcom/otaliastudios/opengl/draw/GlDrawable;[F)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "modelViewProjectionMatrix"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 48
    iget-boolean v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->isReleased:Z

    if-nez v0, :cond_2

    .line 49
    iget-boolean v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->ownsHandle:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->handle:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 88
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->shaders:[Lcom/otaliastudios/opengl/program/GlShader;

    .line 124
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    invoke-virtual {v3}, Lcom/otaliastudios/opengl/program/GlShader;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/otaliastudios/opengl/program/GlProgram;->isReleased:Z

    :cond_2
    return-void
.end method

.method public unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
