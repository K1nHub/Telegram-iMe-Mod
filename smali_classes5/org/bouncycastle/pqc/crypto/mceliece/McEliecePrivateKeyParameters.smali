.class public Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;


# instance fields
.field private field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

.field private goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private k:I

.field private n:I

.field private p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

.field private p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

.field private sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;)V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iput-object p7, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    invoke-static {p3, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/GoppaCode;->createCanonicalCheckMatrix(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    new-instance p1, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;

    invoke-direct {p1, p3, p4}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2m;->getSquareRootMatrix()[Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-void
.end method


# virtual methods
.method public getField()Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/bouncycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getGoppaPoly()Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    return v0
.end method

.method public getP1()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getP2()Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getSInv()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method
