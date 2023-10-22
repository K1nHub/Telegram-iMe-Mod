.class public final Lorg/ton/crypto/digest/Digest$Companion;
.super Ljava/lang/Object;
.source "Digest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/crypto/digest/Digest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/crypto/digest/Digest$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/crypto/digest/Digest$Companion;

    invoke-direct {v0}, Lorg/ton/crypto/digest/Digest$Companion;-><init>()V

    sput-object v0, Lorg/ton/crypto/digest/Digest$Companion;->$$INSTANCE:Lorg/ton/crypto/digest/Digest$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sha256()Lorg/ton/crypto/digest/Digest;
    .locals 1

    const-string v0, "SHA-256"

    .line 19
    invoke-static {v0}, Lorg/ton/crypto/digest/DigestJvmKt;->Digest(Ljava/lang/String;)Lorg/ton/crypto/digest/Digest;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lorg/ton/crypto/digest/Digest;
    .locals 1

    const-string v0, "SHA-512"

    .line 20
    invoke-static {v0}, Lorg/ton/crypto/digest/DigestJvmKt;->Digest(Ljava/lang/String;)Lorg/ton/crypto/digest/Digest;

    move-result-object v0

    return-object v0
.end method
