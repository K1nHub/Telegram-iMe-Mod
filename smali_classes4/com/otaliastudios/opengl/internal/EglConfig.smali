.class public final Lcom/otaliastudios/opengl/internal/EglConfig;
.super Ljava/lang/Object;
.source "egl.kt"


# instance fields
.field private final native:Landroid/opengl/EGLConfig;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLConfig;)V
    .locals 1

    const-string/jumbo v0, "native"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/opengl/internal/EglConfig;->native:Landroid/opengl/EGLConfig;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/otaliastudios/opengl/internal/EglConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/otaliastudios/opengl/internal/EglConfig;

    iget-object v1, p0, Lcom/otaliastudios/opengl/internal/EglConfig;->native:Landroid/opengl/EGLConfig;

    iget-object p1, p1, Lcom/otaliastudios/opengl/internal/EglConfig;->native:Landroid/opengl/EGLConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getNative()Landroid/opengl/EGLConfig;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/otaliastudios/opengl/internal/EglConfig;->native:Landroid/opengl/EGLConfig;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/opengl/internal/EglConfig;->native:Landroid/opengl/EGLConfig;

    invoke-virtual {v0}, Landroid/opengl/EGLConfig;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EglConfig(native="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/otaliastudios/opengl/internal/EglConfig;->native:Landroid/opengl/EGLConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
