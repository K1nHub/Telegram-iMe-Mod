.class public abstract Lorg/bouncycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PKCS5PasswordToUTF8Bytes([C)[B
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method


# virtual methods
.method public init([B[BI)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iput p3, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return-void
.end method
