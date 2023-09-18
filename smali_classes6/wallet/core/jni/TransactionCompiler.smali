.class public final Lwallet/core/jni/TransactionCompiler;
.super Ljava/lang/Object;
.source "TransactionCompiler.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native buildInput(Lwallet/core/jni/CoinType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "coinType",
            "from",
            "to",
            "amount",
            "asset",
            "memo",
            "chainId"
        }
    .end annotation
.end method

.method public static native compileWithSignatures(Lwallet/core/jni/CoinType;[BLwallet/core/jni/DataVector;Lwallet/core/jni/DataVector;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "coinType",
            "txInputData",
            "signatures",
            "publicKeys"
        }
    .end annotation
.end method

.method static createFromNative([B)Lwallet/core/jni/TransactionCompiler;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 24
    new-instance v0, Lwallet/core/jni/TransactionCompiler;

    invoke-direct {v0}, Lwallet/core/jni/TransactionCompiler;-><init>()V

    .line 25
    iput-object p0, v0, Lwallet/core/jni/TransactionCompiler;->bytes:[B

    return-object v0
.end method

.method public static native preImageHashes(Lwallet/core/jni/CoinType;[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coinType",
            "txInputData"
        }
    .end annotation
.end method
