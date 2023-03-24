.class public final Lwallet/core/jni/StoredKey;
.super Ljava/lang/Object;
.source "StoredKey.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/StoredKey;->nativeHandle:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "password"
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-static {p1, p2}, Lwallet/core/jni/StoredKey;->nativeCreate(Ljava/lang/String;[B)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/StoredKey;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {p0, p1, p2}, Lwallet/core/jni/StoredKeyPhantomReference;->register(Lwallet/core/jni/StoredKey;J)V

    return-void

    .line 358
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;[BLwallet/core/jni/StoredKeyEncryption;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "password",
            "encryption"
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-static {p1, p2, p3}, Lwallet/core/jni/StoredKey;->nativeCreateEncryption(Ljava/lang/String;[BLwallet/core/jni/StoredKeyEncryption;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/StoredKey;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 380
    invoke-static {p0, p1, p2}, Lwallet/core/jni/StoredKeyPhantomReference;->register(Lwallet/core/jni/StoredKey;J)V

    return-void

    .line 377
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;[BLwallet/core/jni/StoredKeyEncryptionLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "password",
            "encryptionLevel"
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    invoke-static {p1, p2, p3}, Lwallet/core/jni/StoredKey;->nativeCreateLevel(Ljava/lang/String;[BLwallet/core/jni/StoredKeyEncryptionLevel;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/StoredKey;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 324
    invoke-static {p0, p1, p2}, Lwallet/core/jni/StoredKeyPhantomReference;->register(Lwallet/core/jni/StoredKey;J)V

    return-void

    .line 321
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;[BLwallet/core/jni/StoredKeyEncryptionLevel;Lwallet/core/jni/StoredKeyEncryption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "password",
            "encryptionLevel",
            "encryption"
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-static {p1, p2, p3, p4}, Lwallet/core/jni/StoredKey;->nativeCreateLevelAndEncryption(Ljava/lang/String;[BLwallet/core/jni/StoredKeyEncryptionLevel;Lwallet/core/jni/StoredKeyEncryption;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/StoredKey;->nativeHandle:J

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    .line 343
    invoke-static {p0, p1, p2}, Lwallet/core/jni/StoredKeyPhantomReference;->register(Lwallet/core/jni/StoredKey;J)V

    return-void

    .line 340
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/StoredKey;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 26
    new-instance v0, Lwallet/core/jni/StoredKey;

    invoke-direct {v0}, Lwallet/core/jni/StoredKey;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/StoredKey;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/StoredKeyPhantomReference;->register(Lwallet/core/jni/StoredKey;J)V

    return-object v0
.end method

.method public static native importHDWallet(Ljava/lang/String;Ljava/lang/String;[BLwallet/core/jni/CoinType;)Lwallet/core/jni/StoredKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mnemonic",
            "name",
            "password",
            "coin"
        }
    .end annotation
.end method

.method public static native importHDWalletWithEncryption(Ljava/lang/String;Ljava/lang/String;[BLwallet/core/jni/CoinType;Lwallet/core/jni/StoredKeyEncryption;)Lwallet/core/jni/StoredKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mnemonic",
            "name",
            "password",
            "coin",
            "encryption"
        }
    .end annotation
.end method

.method public static native importJSON([B)Lwallet/core/jni/StoredKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation
.end method

.method public static native importPrivateKey([BLjava/lang/String;[BLwallet/core/jni/CoinType;)Lwallet/core/jni/StoredKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "name",
            "password",
            "coin"
        }
    .end annotation
.end method

.method public static native importPrivateKeyWithEncryption([BLjava/lang/String;[BLwallet/core/jni/CoinType;Lwallet/core/jni/StoredKeyEncryption;)Lwallet/core/jni/StoredKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "name",
            "password",
            "coin",
            "encryption"
        }
    .end annotation
.end method

.method public static native load(Ljava/lang/String;)Lwallet/core/jni/StoredKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method static native nativeCreate(Ljava/lang/String;[B)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "password"
        }
    .end annotation
.end method

.method static native nativeCreateEncryption(Ljava/lang/String;[BLwallet/core/jni/StoredKeyEncryption;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "password",
            "encryption"
        }
    .end annotation
.end method

.method static native nativeCreateLevel(Ljava/lang/String;[BLwallet/core/jni/StoredKeyEncryptionLevel;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "password",
            "encryptionLevel"
        }
    .end annotation
.end method

.method static native nativeCreateLevelAndEncryption(Ljava/lang/String;[BLwallet/core/jni/StoredKeyEncryptionLevel;Lwallet/core/jni/StoredKeyEncryption;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "password",
            "encryptionLevel",
            "encryption"
        }
    .end annotation
.end method

.method static native nativeDelete(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation
.end method


# virtual methods
.method public native account(I)Lwallet/core/jni/Account;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public native accountCount()I
.end method

.method public native accountForCoin(Lwallet/core/jni/CoinType;Lwallet/core/jni/HDWallet;)Lwallet/core/jni/Account;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coin",
            "wallet"
        }
    .end annotation
.end method

.method public native accountForCoinDerivation(Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;Lwallet/core/jni/HDWallet;)Lwallet/core/jni/Account;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "coin",
            "derivation",
            "wallet"
        }
    .end annotation
.end method

.method public native addAccount(Ljava/lang/String;Lwallet/core/jni/CoinType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "coin",
            "derivationPath",
            "publicKey",
            "extendedPublicKey"
        }
    .end annotation
.end method

.method public native addAccountDerivation(Ljava/lang/String;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "coin",
            "derivation",
            "derivationPath",
            "publicKey",
            "extendedPublicKey"
        }
    .end annotation
.end method

.method public native decryptMnemonic([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation
.end method

.method public native decryptPrivateKey([B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation
.end method

.method public native encryptionParameters()Ljava/lang/String;
.end method

.method public native exportJSON()[B
.end method

.method public native fixAddresses([B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation
.end method

.method public native identifier()Ljava/lang/String;
.end method

.method public native isMnemonic()Z
.end method

.method public native name()Ljava/lang/String;
.end method

.method public native privateKey(Lwallet/core/jni/CoinType;[B)Lwallet/core/jni/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coin",
            "password"
        }
    .end annotation
.end method

.method public native removeAccountForCoin(Lwallet/core/jni/CoinType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coin"
        }
    .end annotation
.end method

.method public native removeAccountForCoinDerivation(Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coin",
            "derivation"
        }
    .end annotation
.end method

.method public native removeAccountForCoinDerivationPath(Lwallet/core/jni/CoinType;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coin",
            "derivationPath"
        }
    .end annotation
.end method

.method public native store(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public native wallet([B)Lwallet/core/jni/HDWallet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation
.end method
