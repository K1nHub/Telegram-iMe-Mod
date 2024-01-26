.class public final Lcom/binance/android/opensdk/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/binance/android/opensdk/api/BinanceAPI;


# instance fields
.field private final a:I

.field private b:Lcom/binance/android/opensdk/api/BinanceListener;

.field private final c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/binance/android/opensdk/b/a;->c:Landroid/app/Activity;

    const/16 p1, 0x2ef1

    iput p1, p0, Lcom/binance/android/opensdk/b/a;->a:I

    return-void
.end method

.method private final a()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "local"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "Locale.SIMPLIFIED_CHINESE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cn"

    goto :goto_0

    :cond_0
    const-string v0, "en"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.binance.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/download?link=kDFj/38cb47e"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(\"https://www.b\u2026nload?link=kDFj/38cb47e\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/binance/android/opensdk/b/a;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final a(Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;Lcom/binance/android/opensdk/api/BinanceListener;Z)V
    .locals 9

    iget-object v0, p0, Lcom/binance/android/opensdk/b/a;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/binance/android/opensdk/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/binance/android/opensdk/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {p1}, Lcom/binance/android/opensdk/c/a;->a(Lcom/binance/android/opensdk/api/OAuthParams;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x2713

    :goto_0
    invoke-interface {p3, p1}, Lcom/binance/android/opensdk/api/BinanceListener;->onError(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/binance/android/opensdk/b/a;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/binance/android/opensdk/c/a;->a(Landroid/content/Context;)Lcom/binance/android/opensdk/api/AppStatus;

    move-result-object v1

    sget-object v2, Lcom/binance/android/opensdk/api/AppStatus;->Supported:Lcom/binance/android/opensdk/api/AppStatus;

    if-ne v1, v2, :cond_2

    if-nez p4, :cond_2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/binance/android/opensdk/b/a;->a(Ljava/lang/String;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;Lcom/binance/android/opensdk/api/BinanceListener;)V

    goto :goto_3

    :cond_2
    new-instance p3, Lcom/binance/android/opensdk/a/a;

    iget-object v4, p0, Lcom/binance/android/opensdk/b/a;->c:Landroid/app/Activity;

    if-eqz p4, :cond_3

    sget p4, Lcom/binance/android/opensdk/R$string;->binance_opensdk_login_failed_tips:I

    goto :goto_1

    :cond_3
    sget p4, Lcom/binance/android/opensdk/R$string;->binance_opensdk_login_to_connect:I

    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object p4, Lcom/binance/android/opensdk/api/AppStatus;->UnInstalled:Lcom/binance/android/opensdk/api/AppStatus;

    if-ne v1, p4, :cond_4

    sget p4, Lcom/binance/android/opensdk/R$string;->binance_opensdk_download:I

    goto :goto_2

    :cond_4
    sget p4, Lcom/binance/android/opensdk/R$string;->binance_opensdk_upgrade:I

    :goto_2
    move v6, p4

    new-instance v7, Lcom/binance/android/opensdk/b/a$a;

    invoke-direct {v7, p0}, Lcom/binance/android/opensdk/b/a$a;-><init>(Lcom/binance/android/opensdk/b/a;)V

    new-instance v8, Lcom/binance/android/opensdk/b/a$b;

    invoke-direct {v8, p0, v0, p1, p2}, Lcom/binance/android/opensdk/b/a$b;-><init>(Lcom/binance/android/opensdk/b/a;Ljava/lang/String;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;)V

    move-object v3, p3

    invoke-direct/range {v3 .. v8}, Lcom/binance/android/opensdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/Integer;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    :goto_3
    return-void

    :cond_5
    :goto_4
    const/16 p1, 0x2712

    goto :goto_0
.end method

.method public static final synthetic a(Lcom/binance/android/opensdk/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/binance/android/opensdk/b/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/binance/android/opensdk/b/a;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;Lcom/binance/android/opensdk/api/BinanceListener;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/binance/android/opensdk/b/a;->a(Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;Lcom/binance/android/opensdk/api/BinanceListener;Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/binance/android/opensdk/b/a;Ljava/lang/String;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/binance/android/opensdk/b/a;->a(Ljava/lang/String;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://accounts.binance.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/binance/android/opensdk/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/authorize?response_type=code&client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/binance/android/opensdk/b/b;->a(Lcom/binance/android/opensdk/api/OAuthParams;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/binance/android/opensdk/b/b;->a(Lcom/binance/android/opensdk/api/ChallengeParams;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/binance/android/opensdk/b/a;->c:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;Lcom/binance/android/opensdk/api/BinanceListener;)V
    .locals 0

    iput-object p4, p0, Lcom/binance/android/opensdk/b/a;->b:Lcom/binance/android/opensdk/api/BinanceListener;

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string p4, "binance_opensdk_client_id"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/binance/android/opensdk/api/OAuthParams;->getRedirectUri()Ljava/lang/String;

    move-result-object p1

    const-string p4, "binance_opensdk_redirect_uri"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/binance/android/opensdk/api/OAuthParams;->getScope()Ljava/lang/String;

    move-result-object p1

    const-string p4, "binance_opensdk_scope"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/binance/android/opensdk/api/OAuthParams;->getState()Ljava/lang/String;

    move-result-object p1

    const-string p2, "binance_opensdk_state"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.binance.dev"

    const-string p2, "com.binance.dev.open.BinanceEntryActivity"

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/binance/android/opensdk/b/a;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "binance_opensdk_package_name"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/binance/android/opensdk/b/a;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/binance/android/opensdk/c/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "binance_opensdk_signature"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/binance/android/opensdk/b/a;->c:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/binance/android/opensdk/b/a;->a:I

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public authorize(Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/BinanceListener;)V
    .locals 8

    const-string v0, "oauthParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lcom/binance/android/opensdk/b/a;->a(Lcom/binance/android/opensdk/b/a;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;Lcom/binance/android/opensdk/api/BinanceListener;ZILjava/lang/Object;)V

    return-void
.end method
