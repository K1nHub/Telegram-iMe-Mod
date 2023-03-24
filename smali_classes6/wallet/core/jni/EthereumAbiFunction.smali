.class public final Lwallet/core/jni/EthereumAbiFunction;
.super Ljava/lang/Object;
.source "EthereumAbiFunction.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lwallet/core/jni/EthereumAbiFunction;->nativeHandle:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    invoke-static {p1}, Lwallet/core/jni/EthereumAbiFunction;->nativeCreateWithString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/EthereumAbiFunction;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 437
    invoke-static {p0, v0, v1}, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->register(Lwallet/core/jni/EthereumAbiFunction;J)V

    return-void

    .line 434
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method static createFromNative(J)Lwallet/core/jni/EthereumAbiFunction;
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
    new-instance v0, Lwallet/core/jni/EthereumAbiFunction;

    invoke-direct {v0}, Lwallet/core/jni/EthereumAbiFunction;-><init>()V

    .line 27
    iput-wide p0, v0, Lwallet/core/jni/EthereumAbiFunction;->nativeHandle:J

    .line 28
    invoke-static {v0, p0, p1}, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->register(Lwallet/core/jni/EthereumAbiFunction;J)V

    return-object v0
.end method

.method static native nativeCreateWithString(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
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
.method public native addInArrayParamAddress(I[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamBool(IZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamBytes(I[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamBytesFix(II[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "size",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamInt16(IS)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamInt256(I[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamInt32(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamInt64(IJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamInt8(IB)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamIntN(II[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "bits",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamString(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamUInt16(IS)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamUInt256(I[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamUInt32(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamUInt64(IJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamUInt8(IB)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "val"
        }
    .end annotation
.end method

.method public native addInArrayParamUIntN(II[B)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arrayIdx",
            "bits",
            "val"
        }
    .end annotation
.end method

.method public native addParamAddress([BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamArray(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamBool(ZZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamBytes([BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamBytesFix(I[BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamInt16(SZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamInt256([BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamInt32(IZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamInt64(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamInt8(BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamIntN(I[BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bits",
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamString(Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamUInt16(SZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamUInt256([BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamUInt32(IZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamUInt64(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamUInt8(BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native addParamUIntN(I[BZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bits",
            "val",
            "isOutput"
        }
    .end annotation
.end method

.method public native getParamAddress(IZ)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "isOutput"
        }
    .end annotation
.end method

.method public native getParamBool(IZ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "isOutput"
        }
    .end annotation
.end method

.method public native getParamString(IZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "isOutput"
        }
    .end annotation
.end method

.method public native getParamUInt256(IZ)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "isOutput"
        }
    .end annotation
.end method

.method public native getParamUInt64(IZ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "isOutput"
        }
    .end annotation
.end method

.method public native getParamUInt8(IZ)B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "isOutput"
        }
    .end annotation
.end method

.method public native getType()Ljava/lang/String;
.end method
