.class public final Lcom/otaliastudios/opengl/texture/GlTexture;
.super Ljava/lang/Object;
.source "GlTexture.kt"

# interfaces
.implements Lcom/otaliastudios/opengl/core/GlBindable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlTexture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlTexture.kt\ncom/otaliastudios/opengl/texture/GlTexture\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,72:1\n42#2:73\n114#2,3:74\n43#2,2:77\n117#2,4:79\n48#2:83\n49#2:84\n49#2:85\n48#2:86\n45#2:87\n114#2,3:88\n46#2,2:91\n117#2,4:93\n*S KotlinDebug\n*F\n+ 1 GlTexture.kt\ncom/otaliastudios/opengl/texture/GlTexture\n*L\n33#1:73\n33#1:74,3\n33#1:77,2\n33#1:79,4\n58#1:83\n59#1:84\n64#1:85\n65#1:86\n70#1:87\n70#1:88,3\n70#1:91,2\n70#1:93,4\n*E\n"
.end annotation


# instance fields
.field private final format:Ljava/lang/Integer;

.field private final height:Ljava/lang/Integer;

.field private final id:I

.field private final target:I

.field private final type:Ljava/lang/Integer;

.field private final unit:I

.field private final width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/opengl/texture/GlTexture;-><init>(IILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Integer;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 21
    invoke-direct/range {v0 .. v8}, Lcom/otaliastudios/opengl/texture/GlTexture;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 20
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TEXTURE0()I

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TEXTURE_EXTERNAL_OES()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/otaliastudios/opengl/texture/GlTexture;-><init>(IILjava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->unit:I

    .line 11
    iput p2, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->target:I

    .line 13
    iput-object p4, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->width:Ljava/lang/Integer;

    .line 14
    iput-object p5, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->height:Ljava/lang/Integer;

    .line 15
    iput-object p6, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->format:Ljava/lang/Integer;

    .line 17
    iput-object p8, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->type:Ljava/lang/Integer;

    if-nez p3, :cond_1

    const/4 p1, 0x1

    .line 32
    invoke-static {p1}, Lkotlin/UIntArray;->constructor-impl(I)[I

    move-result-object p2

    .line 115
    invoke-static {p2}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p4

    new-array p5, p4, [I

    const/4 p6, 0x0

    move p8, p6

    :goto_0
    if-ge p8, p4, :cond_0

    invoke-static {p2, p8}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v0

    aput v0, p5, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1, p5, p6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    aget p1, p5, p6

    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    invoke-static {p2, p6, p1}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    const-string p1, "glGenTextures"

    .line 34
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 35
    invoke-static {p2, p6}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result p1

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->id:I

    if-nez p3, :cond_2

    .line 40
    new-instance p1, Lcom/otaliastudios/opengl/texture/GlTexture$1;

    invoke-direct {p1, p0, p7}, Lcom/otaliastudios/opengl/texture/GlTexture$1;-><init>(Lcom/otaliastudios/opengl/texture/GlTexture;Ljava/lang/Integer;)V

    invoke-static {p0, p1}, Lcom/otaliastudios/opengl/core/GlBindableKt;->use(Lcom/otaliastudios/opengl/core/GlBindable;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    .line 58
    iget v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->unit:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 48
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 59
    iget v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->target:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    iget v1, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->id:I

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    .line 49
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "bind"

    .line 60
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public final getFormat()Ljava/lang/Integer;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->format:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->id:I

    return v0
.end method

.method public final getTarget()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->target:I

    return v0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final release()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 70
    iget v2, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->id:I

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 115
    invoke-static {v1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result v2

    new-array v4, v2, [I

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-static {v1, v5}, Lkotlin/UIntArray;->get-pVg5ArA([II)I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v0, v4, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 47
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    aget v0, v4, v3

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    invoke-static {v1, v3, v0}, Lkotlin/UIntArray;->set-VXSXFK8([III)V

    return-void
.end method

.method public unbind()V
    .locals 2

    .line 64
    iget v0, p0, Lcom/otaliastudios/opengl/texture/GlTexture;->target:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    .line 49
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 65
    invoke-static {}, Lcom/otaliastudios/opengl/internal/GlKt;->getGL_TEXTURE0()I

    move-result v0

    .line 48
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string/jumbo v0, "unbind"

    .line 66
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
