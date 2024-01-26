.class public final Lwallet/core/jni/AnyAddress;
.super Ljava/lang/Object;
.source "AnyAddress.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/AnyAddress;->nativeHandle:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lwallet/core/jni/CoinType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "coin"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1, p2}, Lwallet/core/jni/AnyAddress;->nativeCreateWithString(Ljava/lang/String;Lwallet/core/jni/CoinType;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/AnyAddress;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p0, p1, p2}, Lwallet/core/jni/AnyAddressPhantomReference;->register(Lwallet/core/jni/AnyAddress;J)V

    return-void

    .line 155
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lwallet/core/jni/CoinType;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "coin",
            "ss58Prefix"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-static {p1, p2, p3}, Lwallet/core/jni/AnyAddress;->nativeCreateSS58(Ljava/lang/String;Lwallet/core/jni/CoinType;I)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/AnyAddress;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 192
    invoke-static {p0, p1, p2}, Lwallet/core/jni/AnyAddressPhantomReference;->register(Lwallet/core/jni/AnyAddress;J)V

    return-void

    .line 189
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lwallet/core/jni/CoinType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "coin",
            "hrp"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p1, p2, p3}, Lwallet/core/jni/AnyAddress;->nativeCreateBech32(Ljava/lang/String;Lwallet/core/jni/CoinType;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/AnyAddress;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 175
    invoke-static {p0, p1, p2}, Lwallet/core/jni/AnyAddressPhantomReference;->register(Lwallet/core/jni/AnyAddress;J)V

    return-void

    .line 172
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "coin"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {p1, p2}, Lwallet/core/jni/AnyAddress;->nativeCreateWithPublicKey(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/AnyAddress;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {p0, p1, p2}, Lwallet/core/jni/AnyAddressPhantomReference;->register(Lwallet/core/jni/AnyAddress;J)V

    return-void

    .line 205
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "coin",
            "ss58Prefix"
        }
    .end annotation

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    invoke-static {p1, p2, p3}, Lwallet/core/jni/AnyAddress;->nativeCreateSS58WithPublicKey(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;I)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/AnyAddress;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 259
    invoke-static {p0, p1, p2}, Lwallet/core/jni/AnyAddressPhantomReference;->register(Lwallet/core/jni/AnyAddress;J)V

    return-void

    .line 256
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "coin",
            "hrp"
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-static {p1, p2, p3}, Lwallet/core/jni/AnyAddress;->nativeCreateBech32WithPublicKey(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/AnyAddress;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 242
    invoke-static {p0, p1, p2}, Lwallet/core/jni/AnyAddressPhantomReference;->register(Lwallet/core/jni/AnyAddress;J)V

    return-void

    .line 239
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "coin",
            "derivation"
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-static {p1, p2, p3}, Lwallet/core/jni/AnyAddress;->nativeCreateWithPublicKeyDerivation(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/AnyAddress;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 225
    invoke-static {p0, p1, p2}, Lwallet/core/jni/AnyAddressPhantomReference;->register(Lwallet/core/jni/AnyAddress;J)V

    return-void

    .line 222
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/AnyAddress;
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
    new-instance v0, Lwallet/core/jni/AnyAddress;

    invoke-direct {v0}, Lwallet/core/jni/AnyAddress;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/AnyAddress;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/AnyAddressPhantomReference;->register(Lwallet/core/jni/AnyAddress;J)V

    return-object v0
.end method

.method public static native equals(Lwallet/core/jni/AnyAddress;Lwallet/core/jni/AnyAddress;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation
.end method

.method public static native isValid(Ljava/lang/String;Lwallet/core/jni/CoinType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "coin"
        }
    .end annotation
.end method

.method public static native isValidBech32(Ljava/lang/String;Lwallet/core/jni/CoinType;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "coin",
            "hrp"
        }
    .end annotation
.end method

.method public static native isValidSS58(Ljava/lang/String;Lwallet/core/jni/CoinType;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "coin",
            "ss58Prefix"
        }
    .end annotation
.end method

.method static native nativeCreateBech32(Ljava/lang/String;Lwallet/core/jni/CoinType;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "coin",
            "hrp"
        }
    .end annotation
.end method

.method static native nativeCreateBech32WithPublicKey(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "coin",
            "hrp"
        }
    .end annotation
.end method

.method static native nativeCreateSS58(Ljava/lang/String;Lwallet/core/jni/CoinType;I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "coin",
            "ss58Prefix"
        }
    .end annotation
.end method

.method static native nativeCreateSS58WithPublicKey(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "coin",
            "ss58Prefix"
        }
    .end annotation
.end method

.method static native nativeCreateWithPublicKey(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "coin"
        }
    .end annotation
.end method

.method static native nativeCreateWithPublicKeyDerivation(Lwallet/core/jni/PublicKey;Lwallet/core/jni/CoinType;Lwallet/core/jni/Derivation;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "coin",
            "derivation"
        }
    .end annotation
.end method

.method static native nativeCreateWithString(Ljava/lang/String;Lwallet/core/jni/CoinType;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "coin"
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
.method public native coin()Lwallet/core/jni/CoinType;
.end method

.method public native data()[B
.end method

.method public native description()Ljava/lang/String;
.end method
