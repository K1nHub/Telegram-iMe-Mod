.class public final Lcom/otaliastudios/opengl/extensions/MatrixKt;
.super Ljava/lang/Object;
.source "Matrix.kt"


# direct methods
.method private static final checkSize([F)V
    .locals 1

    .line 9
    array-length p0, p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Need a 16 values matrix."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final makeIdentity([F)[F
    .locals 1

    const-string v0, "$this$makeIdentity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/otaliastudios/opengl/extensions/MatrixKt;->checkSize([F)V

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-object p0
.end method
