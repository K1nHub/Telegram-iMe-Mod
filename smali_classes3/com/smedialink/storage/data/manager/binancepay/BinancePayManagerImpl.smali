.class public final Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;
.super Ljava/lang/Object;
.source "BinancePayManagerImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl$Companion;
    }
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-void
.end method

.method private final getRefreshTokenExpiresInMillis()J
    .locals 3

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getBinanceAuthSession()Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->getAuthTokens()Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getBinanceAuthSession()Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->getAuthTokens()Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUser()Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getBinanceUserInfo()Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->getInfo()Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public isAuthorized()Z
    .locals 3

    .line 16
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->isRefreshTokenValid()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isRefreshTokenValid()Z
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getBinanceAuthSession()Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;->getUpdateTimestamp()J

    move-result-wide v0

    .line 38
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->getRefreshTokenExpiresInMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logout()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/binancepay/BinancePayManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->resetBinanceAccount()V

    return-void
.end method
