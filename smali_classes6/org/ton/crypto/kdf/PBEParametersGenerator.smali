.class public abstract Lorg/ton/crypto/kdf/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "PBEParametersGenerator.kt"


# instance fields
.field private iterationCount:I

.field private password:[B

.field private salt:[B


# direct methods
.method public constructor <init>([B[BI)V
    .locals 1

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "salt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/ton/crypto/kdf/PBEParametersGenerator;->password:[B

    .line 12
    iput-object p2, p0, Lorg/ton/crypto/kdf/PBEParametersGenerator;->salt:[B

    .line 14
    iput p3, p0, Lorg/ton/crypto/kdf/PBEParametersGenerator;->iterationCount:I

    return-void
.end method


# virtual methods
.method public final getIterationCount()I
    .locals 1

    .line 14
    iget v0, p0, Lorg/ton/crypto/kdf/PBEParametersGenerator;->iterationCount:I

    return v0
.end method

.method public final getPassword()[B
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ton/crypto/kdf/PBEParametersGenerator;->password:[B

    return-object v0
.end method

.method public final getSalt()[B
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ton/crypto/kdf/PBEParametersGenerator;->salt:[B

    return-object v0
.end method

.method public final init([B[BI)Lorg/ton/crypto/kdf/PBEParametersGenerator;
    .locals 1

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "salt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lorg/ton/crypto/kdf/PBEParametersGenerator;->password:[B

    .line 19
    iput-object p2, p0, Lorg/ton/crypto/kdf/PBEParametersGenerator;->salt:[B

    .line 20
    iput p3, p0, Lorg/ton/crypto/kdf/PBEParametersGenerator;->iterationCount:I

    return-object p0
.end method
