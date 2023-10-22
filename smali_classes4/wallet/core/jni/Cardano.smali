.class public final Lwallet/core/jni/Cardano;
.super Ljava/lang/Object;
.source "Cardano.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/Cardano;
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
    new-instance v0, Lwallet/core/jni/Cardano;

    invoke-direct {v0}, Lwallet/core/jni/Cardano;-><init>()V

    .line 25
    iput-object p0, v0, Lwallet/core/jni/Cardano;->bytes:[B

    return-object v0
.end method

.method public static native getStakingAddress(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseAddress"
        }
    .end annotation
.end method

.method public static native minAdaAmount([B)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenBundle"
        }
    .end annotation
.end method
