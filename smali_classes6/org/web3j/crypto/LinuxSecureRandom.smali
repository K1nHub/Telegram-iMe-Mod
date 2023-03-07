.class public Lorg/web3j/crypto/LinuxSecureRandom;
.super Ljava/security/SecureRandomSpi;
.source "LinuxSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/web3j/crypto/LinuxSecureRandom$LinuxSecureRandomProvider;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field private static final urandom:Ljava/io/FileInputStream;


# instance fields
.field private final dis:Ljava/io/DataInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    const-class v0, Lorg/web3j/crypto/LinuxSecureRandom;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/web3j/crypto/LinuxSecureRandom;->log:Lorg/slf4j/Logger;

    .line 55
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/urandom"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v2, Lorg/web3j/crypto/LinuxSecureRandom;->urandom:Ljava/io/FileInputStream;

    .line 58
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 62
    new-instance v2, Lorg/web3j/crypto/LinuxSecureRandom$LinuxSecureRandomProvider;

    invoke-direct {v2}, Lorg/web3j/crypto/LinuxSecureRandom$LinuxSecureRandomProvider;-><init>()V

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    move-result v2

    if-eq v2, v3, :cond_0

    const-string v2, "Secure randomness will be read from {} only."

    .line 65
    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Randomness is already secure."

    .line 67
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "/dev/urandom not readable?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 74
    sget-object v1, Lorg/web3j/crypto/LinuxSecureRandom;->log:Lorg/slf4j/Logger;

    const-string v2, "/dev/urandom does not appear to be readable"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 71
    sget-object v1, Lorg/web3j/crypto/LinuxSecureRandom;->log:Lorg/slf4j/Logger;

    const-string v2, "/dev/urandom does not appear to exist or is not openable"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    .line 83
    new-instance v0, Ljava/io/DataInputStream;

    sget-object v1, Lorg/web3j/crypto/LinuxSecureRandom;->urandom:Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/web3j/crypto/LinuxSecureRandom;->dis:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 0

    .line 102
    new-array p1, p1, [B

    .line 103
    invoke-virtual {p0, p1}, Lorg/web3j/crypto/LinuxSecureRandom;->engineNextBytes([B)V

    return-object p1
.end method

.method protected engineNextBytes([B)V
    .locals 1

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/web3j/crypto/LinuxSecureRandom;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected engineSetSeed([B)V
    .locals 0

    return-void
.end method
