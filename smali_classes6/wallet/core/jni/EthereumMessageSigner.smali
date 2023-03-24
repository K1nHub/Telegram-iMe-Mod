.class public final Lwallet/core/jni/EthereumMessageSigner;
.super Ljava/lang/Object;
.source "EthereumMessageSigner.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/EthereumMessageSigner;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 27
    new-instance v0, Lwallet/core/jni/EthereumMessageSigner;

    invoke-direct {v0}, Lwallet/core/jni/EthereumMessageSigner;-><init>()V

    .line 28
    iput-object p0, v0, Lwallet/core/jni/EthereumMessageSigner;->bytes:[B

    return-object v0
.end method

.method public static native signMessage(Lwallet/core/jni/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "message"
        }
    .end annotation
.end method

.method public static native signMessageEip155(Lwallet/core/jni/PrivateKey;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "message",
            "chainId"
        }
    .end annotation
.end method

.method public static native signMessageImmutableX(Lwallet/core/jni/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "message"
        }
    .end annotation
.end method

.method public static native signTypedMessage(Lwallet/core/jni/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "messageJson"
        }
    .end annotation
.end method

.method public static native signTypedMessageEip155(Lwallet/core/jni/PrivateKey;Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "messageJson",
            "chainId"
        }
    .end annotation
.end method

.method public static native verifyMessage(Lwallet/core/jni/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pubKey",
            "message",
            "signature"
        }
    .end annotation
.end method
