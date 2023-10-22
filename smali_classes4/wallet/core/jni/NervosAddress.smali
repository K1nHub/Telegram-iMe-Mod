.class public final Lwallet/core/jni/NervosAddress;
.super Ljava/lang/Object;
.source "NervosAddress.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/NervosAddress;->nativeHandle:J

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

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Lwallet/core/jni/NervosAddress;->nativeCreateWithString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/NervosAddress;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 90
    invoke-static {p0, v0, v1}, Lwallet/core/jni/NervosAddressPhantomReference;->register(Lwallet/core/jni/NervosAddress;J)V

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/NervosAddress;
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
    new-instance v0, Lwallet/core/jni/NervosAddress;

    invoke-direct {v0}, Lwallet/core/jni/NervosAddress;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/NervosAddress;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/NervosAddressPhantomReference;->register(Lwallet/core/jni/NervosAddress;J)V

    return-object v0
.end method

.method public static native equals(Lwallet/core/jni/NervosAddress;Lwallet/core/jni/NervosAddress;)Z
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
.method public native args()[B
.end method

.method public native codeHash()[B
.end method

.method public native description()Ljava/lang/String;
.end method

.method public native hashType()Ljava/lang/String;
.end method
