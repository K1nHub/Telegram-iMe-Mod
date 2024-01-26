.class public final Lwallet/core/jni/DataVector;
.super Ljava/lang/Object;
.source "DataVector.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lwallet/core/jni/DataVector;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/DataVector;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 78
    invoke-static {p0, v0, v1}, Lwallet/core/jni/DataVectorPhantomReference;->register(Lwallet/core/jni/DataVector;J)V

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lwallet/core/jni/DataVector;->nativeCreateWithData([B)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/DataVector;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 93
    invoke-static {p0, v0, v1}, Lwallet/core/jni/DataVectorPhantomReference;->register(Lwallet/core/jni/DataVector;J)V

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/DataVector;
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
    new-instance v0, Lwallet/core/jni/DataVector;

    invoke-direct {v0}, Lwallet/core/jni/DataVector;-><init>()V

    .line 23
    iput-wide p0, v0, Lwallet/core/jni/DataVector;->nativeHandle:J

    .line 24
    invoke-static {v0, p0, p1}, Lwallet/core/jni/DataVectorPhantomReference;->register(Lwallet/core/jni/DataVector;J)V

    return-object v0
.end method

.method static native nativeCreate()J
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
.method public native add([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public native get(I)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public native size()I
.end method
