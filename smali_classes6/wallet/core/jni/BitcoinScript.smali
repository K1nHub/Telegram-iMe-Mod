.class public final Lwallet/core/jni/BitcoinScript;
.super Ljava/lang/Object;
.source "BitcoinScript.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-static {}, Lwallet/core/jni/BitcoinScript;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/BitcoinScript;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 221
    invoke-static {p0, v0, v1}, Lwallet/core/jni/BitcoinScriptPhantomReference;->register(Lwallet/core/jni/BitcoinScript;J)V

    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lwallet/core/jni/BitcoinScript;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "script"
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-static {p1}, Lwallet/core/jni/BitcoinScript;->nativeCreateCopy(Lwallet/core/jni/BitcoinScript;)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/BitcoinScript;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 258
    invoke-static {p0, v0, v1}, Lwallet/core/jni/BitcoinScriptPhantomReference;->register(Lwallet/core/jni/BitcoinScript;J)V

    return-void

    .line 255
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

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {p1}, Lwallet/core/jni/BitcoinScript;->nativeCreateWithData([B)J

    move-result-wide v0

    iput-wide v0, p0, Lwallet/core/jni/BitcoinScript;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 237
    invoke-static {p0, v0, v1}, Lwallet/core/jni/BitcoinScriptPhantomReference;->register(Lwallet/core/jni/BitcoinScript;J)V

    return-void

    .line 234
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public static native buildPayToPublicKey([B)Lwallet/core/jni/BitcoinScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubkey"
        }
    .end annotation
.end method

.method public static native buildPayToPublicKeyHash([B)Lwallet/core/jni/BitcoinScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation
.end method

.method public static native buildPayToScriptHash([B)Lwallet/core/jni/BitcoinScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scriptHash"
        }
    .end annotation
.end method

.method public static native buildPayToWitnessPubkeyHash([B)Lwallet/core/jni/BitcoinScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation
.end method

.method public static native buildPayToWitnessScriptHash([B)Lwallet/core/jni/BitcoinScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scriptHash"
        }
    .end annotation
.end method

.method static createFromNative(J)Lwallet/core/jni/BitcoinScript;
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
    new-instance v0, Lwallet/core/jni/BitcoinScript;

    invoke-direct {v0}, Lwallet/core/jni/BitcoinScript;-><init>()V

    .line 23
    iput-wide p0, v0, Lwallet/core/jni/BitcoinScript;->nativeHandle:J

    .line 24
    invoke-static {v0, p0, p1}, Lwallet/core/jni/BitcoinScriptPhantomReference;->register(Lwallet/core/jni/BitcoinScript;J)V

    return-object v0
.end method

.method public static native equals(Lwallet/core/jni/BitcoinScript;Lwallet/core/jni/BitcoinScript;)Z
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

.method public static native hashTypeForCoin(Lwallet/core/jni/CoinType;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coinType"
        }
    .end annotation
.end method

.method public static native lockScriptForAddress(Ljava/lang/String;Lwallet/core/jni/CoinType;)Lwallet/core/jni/BitcoinScript;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "address",
            "coin"
        }
    .end annotation
.end method

.method static native nativeCreate()J
.end method

.method static native nativeCreateCopy(Lwallet/core/jni/BitcoinScript;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "script"
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

.method public native encode()[B
.end method

.method public native isPayToScriptHash()Z
.end method

.method public native isPayToWitnessPublicKeyHash()Z
.end method

.method public native isPayToWitnessScriptHash()Z
.end method

.method public native isWitnessProgram()Z
.end method

.method public native matchPayToPubkey()[B
.end method

.method public native matchPayToPubkeyHash()[B
.end method

.method public native matchPayToScriptHash()[B
.end method

.method public native matchPayToWitnessPublicKeyHash()[B
.end method

.method public native matchPayToWitnessScriptHash()[B
.end method

.method public native scriptHash()[B
.end method

.method public native size()I
.end method
