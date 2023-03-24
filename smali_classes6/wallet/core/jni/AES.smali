.class public final Lwallet/core/jni/AES;
.super Ljava/lang/Object;
.source "AES.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/AES;
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
    new-instance v0, Lwallet/core/jni/AES;

    invoke-direct {v0}, Lwallet/core/jni/AES;-><init>()V

    .line 25
    iput-object p0, v0, Lwallet/core/jni/AES;->bytes:[B

    return-object v0
.end method

.method public static native decryptCBC([B[B[BLwallet/core/jni/AESPaddingMode;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "data",
            "iv",
            "mode"
        }
    .end annotation
.end method

.method public static native decryptCTR([B[B[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "data",
            "iv"
        }
    .end annotation
.end method

.method public static native encryptCBC([B[B[BLwallet/core/jni/AESPaddingMode;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "data",
            "iv",
            "mode"
        }
    .end annotation
.end method

.method public static native encryptCTR([B[B[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "data",
            "iv"
        }
    .end annotation
.end method
