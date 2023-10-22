.class public final Lcom/iMe/storage/data/utils/crypto/CryptoLibsLoader;
.super Ljava/lang/Object;
.source "CryptoLibsLoader.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/utils/crypto/CryptoLibsLoader;

    invoke-direct {v0}, Lcom/iMe/storage/data/utils/crypto/CryptoLibsLoader;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initTrustWalletCoreLibrary()V
    .locals 1

    const-string v0, "TrustWalletCore"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
