.class public Lorg/bouncycastle/asn1/ASN1UTCTime;
.super Lorg/bouncycastle/asn1/ASN1Primitive;


# instance fields
.field private time:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->time:[B

    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->time:[B

    check-cast p1, Lorg/bouncycastle/asn1/ASN1UTCTime;

    iget-object p1, p1, Lorg/bouncycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->time:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeLength(I)V

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->time:[B

    aget-byte v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method encodedLength()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->time:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->time:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
