.class public final Lwallet/core/jni/BitcoinAddress;
.super Ljava/lang/Object;
.source "BitcoinAddress.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/BitcoinAddress;->nativeHandle:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lwallet/core/jni/BitcoinAddress;->nativeCreateWithString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/BitcoinAddress;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 106
    invoke-static {p0, v0, v1}, Lwallet/core/jni/BitcoinAddressPhantomReference;->register(Lwallet/core/jni/BitcoinAddress;J)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lwallet/core/jni/PublicKey;B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "prefix"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-static {p1, p2}, Lwallet/core/jni/BitcoinAddress;->nativeCreateWithPublicKey(Lwallet/core/jni/PublicKey;B)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/BitcoinAddress;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p0, p1, p2}, Lwallet/core/jni/BitcoinAddressPhantomReference;->register(Lwallet/core/jni/BitcoinAddress;J)V

    return-void

    .line 134
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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Lwallet/core/jni/BitcoinAddress;->nativeCreateWithData([B)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/BitcoinAddress;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 121
    invoke-static {p0, v0, v1}, Lwallet/core/jni/BitcoinAddressPhantomReference;->register(Lwallet/core/jni/BitcoinAddress;J)V

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/BitcoinAddress;
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
    new-instance v0, Lwallet/core/jni/BitcoinAddress;

    invoke-direct {v0}, Lwallet/core/jni/BitcoinAddress;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/BitcoinAddress;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/BitcoinAddressPhantomReference;->register(Lwallet/core/jni/BitcoinAddress;J)V

    return-object v0
.end method

.method public static native equals(Lwallet/core/jni/BitcoinAddress;Lwallet/core/jni/BitcoinAddress;)Z
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

.method public static native isValid([B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public static native isValidString(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
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

.method static native nativeCreateWithPublicKey(Lwallet/core/jni/PublicKey;B)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "prefix"
        }
    .end annotation
.end method

.method static native nativeCreateWithString(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
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
.method public native description()Ljava/lang/String;
.end method

.method public native keyhash()[B
.end method

.method public native prefix()B
.end method
