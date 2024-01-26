.class final Lcom/binance/android/opensdk/b/a$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/binance/android/opensdk/b/a;->a(Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;Lcom/binance/android/opensdk/api/BinanceListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/binance/android/opensdk/b/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/binance/android/opensdk/api/OAuthParams;

.field final synthetic d:Lcom/binance/android/opensdk/api/ChallengeParams;


# direct methods
.method constructor <init>(Lcom/binance/android/opensdk/b/a;Ljava/lang/String;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;)V
    .locals 0

    iput-object p1, p0, Lcom/binance/android/opensdk/b/a$b;->a:Lcom/binance/android/opensdk/b/a;

    iput-object p2, p0, Lcom/binance/android/opensdk/b/a$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/binance/android/opensdk/b/a$b;->c:Lcom/binance/android/opensdk/api/OAuthParams;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/binance/android/opensdk/b/a$b;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Lcom/binance/android/opensdk/b/a$b;->a:Lcom/binance/android/opensdk/b/a;

    iget-object v1, p0, Lcom/binance/android/opensdk/b/a$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/binance/android/opensdk/b/a$b;->c:Lcom/binance/android/opensdk/api/OAuthParams;

    iget-object v3, p0, Lcom/binance/android/opensdk/b/a$b;->d:Lcom/binance/android/opensdk/api/ChallengeParams;

    invoke-static {v0, v1, v2, v3}, Lcom/binance/android/opensdk/b/a;->a(Lcom/binance/android/opensdk/b/a;Ljava/lang/String;Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/ChallengeParams;)V

    return-void
.end method
