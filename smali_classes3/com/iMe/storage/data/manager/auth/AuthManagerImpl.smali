.class public final Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;
.super Ljava/lang/Object;
.source "AuthManagerImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/manager/auth/AuthManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/manager/auth/AuthManagerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthManagerImpl.kt\ncom/iMe/storage/data/manager/auth/AuthManagerImpl\n+ 2 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n*L\n1#1,68:1\n6#2,6:69\n6#2,6:75\n*S KotlinDebug\n*F\n+ 1 AuthManagerImpl.kt\ncom/iMe/storage/data/manager/auth/AuthManagerImpl\n*L\n26#1:69,6\n41#1:75,6\n*E\n"
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "telegramGateway"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 15
    iput-object p2, p0, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAuthSession()Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;->getAuthTokens()Lcom/iMe/storage/domain/model/wallet/SessionTokens;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/SessionTokens;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getOldRefreshToken()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getWalletRefreshToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAuthSession()Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;->getAuthTokens()Lcom/iMe/storage/domain/model/wallet/SessionTokens;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/SessionTokens;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->getOldRefreshToken()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUser()Lcom/iMe/storage/domain/model/wallet/User;
    .locals 5

    .line 24
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v0

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
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 27
    :cond_2
    :try_start_0
    new-instance v0, Lcom/auth0/android/jwt/JWT;

    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-nez v2, :cond_3

    move-object v2, v3

    :cond_3
    :try_start_1
    invoke-direct {v0, v2}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/User;

    const-string v4, "uid"

    invoke-virtual {v0, v4}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v0

    invoke-interface {v0}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v0

    :goto_2
    invoke-direct {v2, v3}, Lcom/iMe/storage/domain/model/wallet/User;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public isAuthorized()Z
    .locals 3

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public logout()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    const-string v1, "auth_session"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper$-CC;->withTgAccount$default(Lcom/iMe/storage/domain/storage/BasePreferenceHelper;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/BasePreferenceHelper;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public setSession(Lcom/iMe/storage/domain/model/wallet/SessionTokens;)V
    .locals 4

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    new-instance v1, Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;

    .line 53
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    .line 51
    invoke-direct {v1, p1, v2, v3}, Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;-><init>(Lcom/iMe/storage/domain/model/wallet/SessionTokens;J)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAuthSession(Lcom/iMe/storage/data/locale/prefs/model/auth/AuthTokensMetadata;)V

    .line 55
    iget-object p1, p0, Lcom/iMe/storage/data/manager/auth/AuthManagerImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->setWalletRefreshToken(Ljava/lang/String;)V

    return-void
.end method
