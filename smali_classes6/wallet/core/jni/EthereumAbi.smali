.class public final Lwallet/core/jni/EthereumAbi;
.super Ljava/lang/Object;
.source "EthereumAbi.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/EthereumAbi;
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
    new-instance v0, Lwallet/core/jni/EthereumAbi;

    invoke-direct {v0}, Lwallet/core/jni/EthereumAbi;-><init>()V

    .line 25
    iput-object p0, v0, Lwallet/core/jni/EthereumAbi;->bytes:[B

    return-object v0
.end method

.method public static native decodeCall([BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "abi"
        }
    .end annotation
.end method

.method public static native decodeOutput(Lwallet/core/jni/EthereumAbiFunction;[B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fn",
            "encoded"
        }
    .end annotation
.end method

.method public static native encode(Lwallet/core/jni/EthereumAbiFunction;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fn"
        }
    .end annotation
.end method

.method public static native encodeTyped(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageJson"
        }
    .end annotation
.end method
