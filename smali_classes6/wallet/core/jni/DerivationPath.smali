.class public final Lwallet/core/jni/DerivationPath;
.super Ljava/lang/Object;
.source "DerivationPath.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/DerivationPath;->nativeHandle:J

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

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {p1}, Lwallet/core/jni/DerivationPath;->nativeCreateWithString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/DerivationPath;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 140
    invoke-static {p0, v0, v1}, Lwallet/core/jni/DerivationPathPhantomReference;->register(Lwallet/core/jni/DerivationPath;J)V

    return-void

    .line 137
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lwallet/core/jni/Purpose;IIII)V
    .locals 0
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
            "account",
            "change",
            "address"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1, p2, p3, p4, p5}, Lwallet/core/jni/DerivationPath;->nativeCreate(Lwallet/core/jni/Purpose;IIII)J

    move-result-wide p1

    iput-wide p1, p0, Lwallet/core/jni/DerivationPath;->nativeHandle:J

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    .line 125
    invoke-static {p0, p1, p2}, Lwallet/core/jni/DerivationPathPhantomReference;->register(Lwallet/core/jni/DerivationPath;J)V

    return-void

    .line 122
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/DerivationPath;
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
    new-instance v0, Lwallet/core/jni/DerivationPath;

    invoke-direct {v0}, Lwallet/core/jni/DerivationPath;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/DerivationPath;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/DerivationPathPhantomReference;->register(Lwallet/core/jni/DerivationPath;J)V

    return-object v0
.end method

.method static native nativeCreate(Lwallet/core/jni/Purpose;IIII)J
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
            "account",
            "change",
            "address"
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
.method public native account()I
.end method

.method public native address()I
.end method

.method public native change()I
.end method

.method public native coin()I
.end method

.method public native description()Ljava/lang/String;
.end method

.method public native indexAt(I)Lwallet/core/jni/DerivationPathIndex;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public native indicesCount()I
.end method

.method public native purpose()Lwallet/core/jni/Purpose;
.end method
