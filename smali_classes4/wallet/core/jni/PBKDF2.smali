.class public final Lwallet/core/jni/PBKDF2;
.super Ljava/lang/Object;
.source "PBKDF2.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/PBKDF2;
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
    new-instance v0, Lwallet/core/jni/PBKDF2;

    invoke-direct {v0}, Lwallet/core/jni/PBKDF2;-><init>()V

    .line 25
    iput-object p0, v0, Lwallet/core/jni/PBKDF2;->bytes:[B

    return-object v0
.end method

.method public static native hmacSha256([B[BII)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "password",
            "salt",
            "iterations",
            "dkLen"
        }
    .end annotation
.end method

.method public static native hmacSha512([B[BII)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "password",
            "salt",
            "iterations",
            "dkLen"
        }
    .end annotation
.end method
