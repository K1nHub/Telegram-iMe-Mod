.class public final Lorg/ton/crypto/SecureRandom;
.super Lkotlin/random/Random;
.source "SecureRandom.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSecureRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SecureRandom.kt\norg/ton/crypto/SecureRandom\n+ 2 SecureRandom.kt\norg/ton/crypto/SecureRandomKt\n*L\n1#1,21:1\n8#2:22\n*S KotlinDebug\n*F\n+ 1 SecureRandom.kt\norg/ton/crypto/SecureRandom\n*L\n10#1:22\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/crypto/SecureRandom;

.field private static final javaSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/crypto/SecureRandom;

    invoke-direct {v0}, Lorg/ton/crypto/SecureRandom;-><init>()V

    sput-object v0, Lorg/ton/crypto/SecureRandom;->INSTANCE:Lorg/ton/crypto/SecureRandom;

    .line 8
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/ton/crypto/SecureRandom;->javaSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    return-void
.end method


# virtual methods
.method public nextBits(I)I
    .locals 2

    .line 10
    invoke-virtual {p0}, Lorg/ton/crypto/SecureRandom;->nextInt()I

    move-result v0

    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    neg-int p1, p1

    shr-int/lit8 p1, p1, 0x1f

    and-int/2addr p1, v0

    return p1
.end method

.method public nextBytes([BII)[B
    .locals 7

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p3, p2

    .line 15
    new-array v0, p3, [B

    .line 16
    sget-object p3, Lorg/ton/crypto/SecureRandom;->javaSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    .line 17
    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object p1
.end method

.method public nextInt()I
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/crypto/SecureRandom;->javaSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method
