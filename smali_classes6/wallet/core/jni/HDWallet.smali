.class public final Lwallet/core/jni/HDWallet;
.super Ljava/lang/Object;
.source "HDWallet.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/HDWallet;->nativeHandle:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strength",
            "passphrase"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-static {p1, p2}, Lwallet/core/jni/HDWallet;->nativeCreate(ILjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/HDWallet;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {p0, p1, p2}, Lwallet/core/jni/HDWalletPhantomReference;->register(Lwallet/core/jni/HDWallet;J)V

    return-void

    .line 275
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mnemonic",
            "passphrase"
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-static {p1, p2}, Lwallet/core/jni/HDWallet;->nativeCreateWithMnemonic(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/HDWallet;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {p0, p1, p2}, Lwallet/core/jni/HDWalletPhantomReference;->register(Lwallet/core/jni/HDWallet;J)V

    return-void

    .line 293
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mnemonic",
            "passphrase",
            "check"
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    invoke-static {p1, p2, p3}, Lwallet/core/jni/HDWallet;->nativeCreateWithMnemonicCheck(Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/HDWallet;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 315
    invoke-static {p0, p1, p2}, Lwallet/core/jni/HDWalletPhantomReference;->register(Lwallet/core/jni/HDWallet;J)V

    return-void

    .line 312
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entropy",
            "passphrase"
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    invoke-static {p1, p2}, Lwallet/core/jni/HDWallet;->nativeCreateWithEntropy([BLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/HDWallet;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {p0, p1, p2}, Lwallet/core/jni/HDWalletPhantomReference;->register(Lwallet/core/jni/HDWallet;J)V

    return-void

    .line 330
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/HDWallet;
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
    new-instance v0, Lwallet/core/jni/HDWallet;

    invoke-direct {v0}, Lwallet/core/jni/HDWallet;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/HDWallet;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/HDWalletPhantomReference;->register(Lwallet/core/jni/HDWallet;J)V

    return-object v0
.end method

.method public static native getPublicKeyFromExtended(Ljava/lang/String;Lwallet/core/jni/CoinType;Ljava/lang/String;)Lwallet/core/jni/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "extended",
            "coin",
            "derivationPath"
        }
    .end annotation
.end method

.method static native nativeCreate(ILjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strength",
            "passphrase"
        }
    .end annotation
.end method

.method static native nativeCreateWithEntropy([BLjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entropy",
            "passphrase"
        }
    .end annotation
.end method

.method static native nativeCreateWithMnemonic(Ljava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mnemonic",
            "passphrase"
        }
    .end annotation
.end method

.method static native nativeCreateWithMnemonicCheck(Ljava/lang/String;Ljava/lang/String;Z)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mnemonic",
            "passphrase",
            "check"
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
.method public native entropy()[B
.end method

.method public native getAddressDerivation(Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;)Ljava/lang/String;
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

.method public native getAddressForCoin(Lwallet/core/jni/CoinType;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coin"
        }
    .end annotation
.end method

.method public native getDerivedKey(Lwallet/core/jni/CoinType;III)Lwallet/core/jni/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "coin",
            "account",
            "change",
            "address"
        }
    .end annotation
.end method

.method public native getExtendedPrivateKey(Lwallet/core/jni/Purpose;Lwallet/core/jni/CoinType;Lwallet/core/jni/HDVersion;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "purpose",
            "coin",
            "version"
        }
    .end annotation
.end method

.method public native getExtendedPrivateKeyAccount(Lwallet/core/jni/Purpose;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;Lwallet/core/jni/HDVersion;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "purpose",
            "coin",
            "derivation",
            "version",
            "account"
        }
    .end annotation
.end method

.method public native getExtendedPrivateKeyDerivation(Lwallet/core/jni/Purpose;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;Lwallet/core/jni/HDVersion;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "purpose",
            "coin",
            "derivation",
            "version"
        }
    .end annotation
.end method

.method public native getExtendedPublicKey(Lwallet/core/jni/Purpose;Lwallet/core/jni/CoinType;Lwallet/core/jni/HDVersion;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "purpose",
            "coin",
            "version"
        }
    .end annotation
.end method

.method public native getExtendedPublicKeyAccount(Lwallet/core/jni/Purpose;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;Lwallet/core/jni/HDVersion;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "purpose",
            "coin",
            "derivation",
            "version",
            "account"
        }
    .end annotation
.end method

.method public native getExtendedPublicKeyDerivation(Lwallet/core/jni/Purpose;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;Lwallet/core/jni/HDVersion;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "purpose",
            "coin",
            "derivation",
            "version"
        }
    .end annotation
.end method

.method public native getKey(Lwallet/core/jni/CoinType;Ljava/lang/String;)Lwallet/core/jni/PrivateKey;
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

.method public native getKeyByCurve(Lwallet/core/jni/Curve;Ljava/lang/String;)Lwallet/core/jni/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curve",
            "derivationPath"
        }
    .end annotation
.end method

.method public native getKeyDerivation(Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;)Lwallet/core/jni/PrivateKey;
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

.method public native getKeyForCoin(Lwallet/core/jni/CoinType;)Lwallet/core/jni/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coin"
        }
    .end annotation
.end method

.method public native getMasterKey(Lwallet/core/jni/Curve;)Lwallet/core/jni/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation
.end method

.method public native mnemonic()Ljava/lang/String;
.end method

.method public native seed()[B
.end method
