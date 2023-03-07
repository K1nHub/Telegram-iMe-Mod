.class public Lorg/bouncycastle/asn1/ASN1Boolean;
.super Lorg/bouncycastle/asn1/ASN1Primitive;


# static fields
.field public static final FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:[B

.field public static final TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:[B


# instance fields
.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    new-array v1, v0, [B

    aput-byte v3, v1, v3

    sput-object v1, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v1, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>(Z)V

    sput-object v1, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    return-void
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE_VALUE:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    sget-object p1, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE_VALUE:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte value should have 1 byte in it"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static fromOctetString([B)Lorg/bouncycastle/asn1/ASN1Boolean;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->FALSE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_0
    aget-byte v0, p0, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/ASN1Boolean;->TRUE:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte v0, v0, v1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Boolean;

    iget-object p1, p1, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    aget-byte p1, p1, v1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Boolean;->value:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method
