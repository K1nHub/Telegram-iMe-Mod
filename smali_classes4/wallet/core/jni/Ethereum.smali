.class public final Lwallet/core/jni/Ethereum;
.super Ljava/lang/Object;
.source "Ethereum.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/Ethereum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 22
    new-instance v0, Lwallet/core/jni/Ethereum;

    invoke-direct {v0}, Lwallet/core/jni/Ethereum;-><init>()V

    .line 23
    iput-object p0, v0, Lwallet/core/jni/Ethereum;->bytes:[B

    return-object v0
.end method

.method public static native eip2645GetPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ethAddress",
            "layer",
            "application",
            "index"
        }
    .end annotation
.end method

.method public static native eip4337GetDeploymentAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "factoryAddress",
            "logicAddress",
            "ownerAddress"
        }
    .end annotation
.end method
