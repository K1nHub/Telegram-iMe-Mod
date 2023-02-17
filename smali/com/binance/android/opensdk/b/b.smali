.class public final Lcom/binance/android/opensdk/b/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final synthetic a(Lcom/binance/android/opensdk/api/ChallengeParams;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/binance/android/opensdk/b/b;->b(Lcom/binance/android/opensdk/api/ChallengeParams;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/binance/android/opensdk/api/OAuthParams;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/binance/android/opensdk/b/b;->b(Lcom/binance/android/opensdk/api/OAuthParams;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lcom/binance/android/opensdk/api/ChallengeParams;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method private static final b(Lcom/binance/android/opensdk/api/OAuthParams;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&redirect_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/binance/android/opensdk/api/OAuthParams;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/binance/android/opensdk/api/OAuthParams;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/binance/android/opensdk/api/OAuthParams;->getScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
