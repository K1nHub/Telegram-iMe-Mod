.class public final Lwallet/core/jni/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/Base32;
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
    new-instance v0, Lwallet/core/jni/Base32;

    invoke-direct {v0}, Lwallet/core/jni/Base32;-><init>()V

    .line 25
    iput-object p0, v0, Lwallet/core/jni/Base32;->bytes:[B

    return-object v0
.end method

.method public static native decode(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation
.end method

.method public static native decodeWithAlphabet(Ljava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "alphabet"
        }
    .end annotation
.end method

.method public static native encode([B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation
.end method

.method public static native encodeWithAlphabet([BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "alphabet"
        }
    .end annotation
.end method
