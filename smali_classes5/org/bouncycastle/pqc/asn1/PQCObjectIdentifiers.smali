.class public interface abstract Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final gmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mcEliece:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final rainbow:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.5.3.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->rainbow:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "3"

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "4"

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "5"

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "1.3.6.1.4.1.8301.3.1.3.3"

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->gmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcEliece:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.2.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256_with_BLAKE512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256_with_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_with_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_with_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
