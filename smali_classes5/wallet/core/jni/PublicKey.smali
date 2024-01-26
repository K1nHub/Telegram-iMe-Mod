.class public final Lwallet/core/jni/PublicKey;
.super Ljava/lang/Object;
.source "PublicKey.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/PublicKey;->nativeHandle:J

    return-void
.end method

.method public constructor <init>([BLwallet/core/jni/PublicKeyType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "type"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {p1, p2}, Lwallet/core/jni/PublicKey;->nativeCreateWithData([BLwallet/core/jni/PublicKeyType;)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/PublicKey;->nativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p0, p1, p2}, Lwallet/core/jni/PublicKeyPhantomReference;->register(Lwallet/core/jni/PublicKey;J)V

    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/PublicKey;
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
    new-instance v0, Lwallet/core/jni/PublicKey;

    invoke-direct {v0}, Lwallet/core/jni/PublicKey;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/PublicKey;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/PublicKeyPhantomReference;->register(Lwallet/core/jni/PublicKey;J)V

    return-object v0
.end method

.method public static native isValid([BLwallet/core/jni/PublicKeyType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "type"
        }
    .end annotation
.end method

.method static native nativeCreateWithData([BLwallet/core/jni/PublicKeyType;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "type"
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

.method public static native recover([B[B)Lwallet/core/jni/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signature",
            "message"
        }
    .end annotation
.end method


# virtual methods
.method public native compressed()Lwallet/core/jni/PublicKey;
.end method

.method public native data()[B
.end method

.method public native description()Ljava/lang/String;
.end method

.method public native isCompressed()Z
.end method

.method public native keyType()Lwallet/core/jni/PublicKeyType;
.end method

.method public native uncompressed()Lwallet/core/jni/PublicKey;
.end method

.method public native verify([B[B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signature",
            "message"
        }
    .end annotation
.end method

.method public native verifyAsDER([B[B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signature",
            "message"
        }
    .end annotation
.end method

.method public native verifyZilliqaSchnorr([B[B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signature",
            "message"
        }
    .end annotation
.end method
