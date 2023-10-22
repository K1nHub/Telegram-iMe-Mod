.class public final Lwallet/core/jni/Mnemonic;
.super Ljava/lang/Object;
.source "Mnemonic.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/Mnemonic;
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
    new-instance v0, Lwallet/core/jni/Mnemonic;

    invoke-direct {v0}, Lwallet/core/jni/Mnemonic;-><init>()V

    .line 25
    iput-object p0, v0, Lwallet/core/jni/Mnemonic;->bytes:[B

    return-object v0
.end method

.method public static native isValid(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mnemonic"
        }
    .end annotation
.end method

.method public static native isValidWord(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "word"
        }
    .end annotation
.end method

.method public static native suggest(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefix"
        }
    .end annotation
.end method
