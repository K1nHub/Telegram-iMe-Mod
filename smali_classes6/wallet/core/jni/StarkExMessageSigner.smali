.class public final Lwallet/core/jni/StarkExMessageSigner;
.super Ljava/lang/Object;
.source "StarkExMessageSigner.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/StarkExMessageSigner;
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
    new-instance v0, Lwallet/core/jni/StarkExMessageSigner;

    invoke-direct {v0}, Lwallet/core/jni/StarkExMessageSigner;-><init>()V

    .line 28
    iput-object p0, v0, Lwallet/core/jni/StarkExMessageSigner;->bytes:[B

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
