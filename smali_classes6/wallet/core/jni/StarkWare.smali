.class public final Lwallet/core/jni/StarkWare;
.super Ljava/lang/Object;
.source "StarkWare.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/StarkWare;
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
    new-instance v0, Lwallet/core/jni/StarkWare;

    invoke-direct {v0}, Lwallet/core/jni/StarkWare;-><init>()V

    .line 23
    iput-object p0, v0, Lwallet/core/jni/StarkWare;->bytes:[B

    return-object v0
.end method

.method public static native getStarkKeyFromSignature(Lwallet/core/jni/DerivationPath;Ljava/lang/String;)Lwallet/core/jni/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "derivationPath",
            "signature"
        }
    .end annotation
.end method
