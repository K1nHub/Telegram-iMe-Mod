.class public final Lwallet/core/jni/PrivateKey;
.super Ljava/lang/Object;
.source "PrivateKey.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {}, Lwallet/core/jni/PrivateKey;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/PrivateKey;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 172
    invoke-static {p0, v0, v1}, Lwallet/core/jni/PrivateKeyPhantomReference;->register(Lwallet/core/jni/PrivateKey;J)V

    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lwallet/core/jni/PrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-static {p1}, Lwallet/core/jni/PrivateKey;->nativeCreateCopy(Lwallet/core/jni/PrivateKey;)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/PrivateKey;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 204
    invoke-static {p0, v0, v1}, Lwallet/core/jni/PrivateKeyPhantomReference;->register(Lwallet/core/jni/PrivateKey;J)V

    return-void

    .line 201
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {p1}, Lwallet/core/jni/PrivateKey;->nativeCreateWithData([B)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/PrivateKey;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 188
    invoke-static {p0, v0, v1}, Lwallet/core/jni/PrivateKeyPhantomReference;->register(Lwallet/core/jni/PrivateKey;J)V

    return-void

    .line 185
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 22
    new-instance v0, Lwallet/core/jni/PrivateKey;

    invoke-direct {v0}, Lwallet/core/jni/PrivateKey;-><init>()V

    .line 23
    iput-wide p0, v0, Lwallet/core/jni/PrivateKey;->nativeHandle:J

    .line 24
    invoke-static {v0, p0, p1}, Lwallet/core/jni/PrivateKeyPhantomReference;->register(Lwallet/core/jni/PrivateKey;J)V

    return-object v0
.end method

.method public static native isValid([BLwallet/core/jni/Curve;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "curve"
        }
    .end annotation
.end method

.method static native nativeCreate()J
.end method

.method static native nativeCreateCopy(Lwallet/core/jni/PrivateKey;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method static native nativeCreateWithData([B)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
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
.method public native data()[B
.end method

.method public native getPublicKey(Lwallet/core/jni/CoinType;)Lwallet/core/jni/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coinType"
        }
    .end annotation
.end method

.method public native getPublicKeyByType(Lwallet/core/jni/PublicKeyType;)Lwallet/core/jni/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubkeyType"
        }
    .end annotation
.end method

.method public native getPublicKeyCurve25519()Lwallet/core/jni/PublicKey;
.end method

.method public native getPublicKeyEd25519()Lwallet/core/jni/PublicKey;
.end method

.method public native getPublicKeyEd25519Blake2b()Lwallet/core/jni/PublicKey;
.end method

.method public native getPublicKeyEd25519Cardano()Lwallet/core/jni/PublicKey;
.end method

.method public native getPublicKeyNist256p1()Lwallet/core/jni/PublicKey;
.end method

.method public native getPublicKeySecp256k1(Z)Lwallet/core/jni/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressed"
        }
    .end annotation
.end method

.method public native getSharedKey(Lwallet/core/jni/PublicKey;Lwallet/core/jni/Curve;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "curve"
        }
    .end annotation
.end method

.method public native sign([BLwallet/core/jni/Curve;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digest",
            "curve"
        }
    .end annotation
.end method

.method public native signAsDER([B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation
.end method

.method public native signZilliqaSchnorr([B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method
