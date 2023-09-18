.class public final Lcom/otaliastudios/opengl/program/GlShader;
.super Ljava/lang/Object;
.source "GlShader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/program/GlShader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlShader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlShader.kt\ncom/otaliastudios/opengl/program/GlShader\n+ 2 gl.kt\ncom/otaliastudios/opengl/internal/GlKt\n*L\n1#1,30:1\n79#2:31\n*S KotlinDebug\n*F\n+ 1 GlShader.kt\ncom/otaliastudios/opengl/program/GlShader\n*L\n11#1:31\n*E\n"
.end annotation


# static fields
.field private static final Companion:Lcom/otaliastudios/opengl/program/GlShader$Companion;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/program/GlShader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/program/GlShader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/opengl/program/GlShader;->Companion:Lcom/otaliastudios/opengl/program/GlShader$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/otaliastudios/opengl/program/GlShader;->id:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/otaliastudios/opengl/program/GlShader;->Companion:Lcom/otaliastudios/opengl/program/GlShader$Companion;

    invoke-static {v0, p1, p2}, Lcom/otaliastudios/opengl/program/GlShader$Companion;->access$compile(Lcom/otaliastudios/opengl/program/GlShader$Companion;ILjava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlShader;->id:I

    return v0
.end method

.method public final release()V
    .locals 1

    .line 11
    iget v0, p0, Lcom/otaliastudios/opengl/program/GlShader;->id:I

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    .line 79
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return-void
.end method
