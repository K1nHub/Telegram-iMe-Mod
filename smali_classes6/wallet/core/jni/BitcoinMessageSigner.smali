.class public final Lwallet/core/jni/BitcoinMessageSigner;
.super Ljava/lang/Object;
.source "BitcoinMessageSigner.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/BitcoinMessageSigner;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 28
    new-instance v0, Lwallet/core/jni/BitcoinMessageSigner;

    invoke-direct {v0}, Lwallet/core/jni/BitcoinMessageSigner;-><init>()V

    .line 29
    iput-object p0, v0, Lwallet/core/jni/BitcoinMessageSigner;->bytes:[B

    return-object v0
.end method

.method public static native signMessage(Lwallet/core/jni/PrivateKey;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "address",
            "message"
        }
    .end annotation
.end method

.method public static native verifyMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "message",
            "signature"
        }
    .end annotation
.end method
