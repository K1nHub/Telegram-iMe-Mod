.class public final Lwallet/core/jni/SegwitAddress;
.super Ljava/lang/Object;
.source "SegwitAddress.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/SegwitAddress;->nativeHandle:J

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
    invoke-static {p1}, Lwallet/core/jni/SegwitAddress;->nativeCreateWithString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/SegwitAddress;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 106
    invoke-static {p0, v0, v1}, Lwallet/core/jni/SegwitAddressPhantomReference;->register(Lwallet/core/jni/SegwitAddress;J)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lwallet/core/jni/HRP;Lwallet/core/jni/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hrp",
            "publicKey"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Lwallet/core/jni/SegwitAddress;->nativeCreateWithPublicKey(Lwallet/core/jni/HRP;Lwallet/core/jni/PublicKey;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/SegwitAddress;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0, p1, p2}, Lwallet/core/jni/SegwitAddressPhantomReference;->register(Lwallet/core/jni/SegwitAddress;J)V

    return-void

    .line 121
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/SegwitAddress;
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
    new-instance v0, Lwallet/core/jni/SegwitAddress;

    invoke-direct {v0}, Lwallet/core/jni/SegwitAddress;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/SegwitAddress;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/SegwitAddressPhantomReference;->register(Lwallet/core/jni/SegwitAddress;J)V

    return-object v0
.end method

.method public static native equals(Lwallet/core/jni/SegwitAddress;Lwallet/core/jni/SegwitAddress;)Z
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

.method static native nativeCreateWithPublicKey(Lwallet/core/jni/HRP;Lwallet/core/jni/PublicKey;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hrp",
            "publicKey"
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

.method public native hrp()Lwallet/core/jni/HRP;
.end method

.method public native witnessProgram()[B
.end method

.method public native witnessVersion()I
.end method
