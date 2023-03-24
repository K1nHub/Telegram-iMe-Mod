.class public final Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;
.super Ljava/lang/Object;
.source "CryptoLibsLoader.kt"


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;

.field private static isTrustWalletCoreInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;

    invoke-direct {v0}, Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;->INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initTrustWalletCoreLibrary()V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;->isTrustWalletCoreInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "TrustWalletCore"

    .line 11
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/smedialink/storage/data/utils/crypto/CryptoLibsLoader;->isTrustWalletCoreInitialized:Z

    :cond_0
    return-void
.end method
