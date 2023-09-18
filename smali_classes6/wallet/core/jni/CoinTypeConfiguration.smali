.class public final Lwallet/core/jni/CoinTypeConfiguration;
.super Ljava/lang/Object;
.source "CoinTypeConfiguration.java"


# instance fields
.field private bytes:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromNative([B)Lwallet/core/jni/CoinTypeConfiguration;
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
    new-instance v0, Lwallet/core/jni/CoinTypeConfiguration;

    invoke-direct {v0}, Lwallet/core/jni/CoinTypeConfiguration;-><init>()V

    .line 25
    iput-object p0, v0, Lwallet/core/jni/CoinTypeConfiguration;->bytes:[B

    return-object v0
.end method

.method public static native getAccountURL(Lwallet/core/jni/CoinType;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "accountID"
        }
    .end annotation
.end method

.method public static native getDecimals(Lwallet/core/jni/CoinType;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public static native getID(Lwallet/core/jni/CoinType;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public static native getName(Lwallet/core/jni/CoinType;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public static native getSymbol(Lwallet/core/jni/CoinType;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public static native getTransactionURL(Lwallet/core/jni/CoinType;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "transactionID"
        }
    .end annotation
.end method
