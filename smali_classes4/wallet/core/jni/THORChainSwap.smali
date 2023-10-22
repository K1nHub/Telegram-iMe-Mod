.class public final Lwallet/core/jni/THORChainSwap;
.super Ljava/lang/Object;
.source "THORChainSwap.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native buildSwap([B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation
.end method

.method static createFromNative([B)Lwallet/core/jni/THORChainSwap;
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
    new-instance v0, Lwallet/core/jni/THORChainSwap;

    invoke-direct {v0}, Lwallet/core/jni/THORChainSwap;-><init>()V

    .line 25
    iput-object p0, v0, Lwallet/core/jni/THORChainSwap;->bytes:[B

    return-object v0
.end method
