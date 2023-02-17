.class public final La/a/a/a/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/binance/android/binancepay/api/BinancePay;


# instance fields
.field public a:Lcom/binance/android/binancepay/api/BinancePayListener;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/b/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBinancePayListener()Lcom/binance/android/binancepay/api/BinancePayListener;
    .locals 1

    iget-object v0, p0, La/a/a/a/b/b;->a:Lcom/binance/android/binancepay/api/BinancePayListener;

    return-object v0
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;Lcom/binance/android/binancepay/api/BinancePayListener;)V
    .locals 3

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, La/a/a/a/b/b;->a:Lcom/binance/android/binancepay/api/BinancePayListener;

    sget-object p3, Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;->b:Lcom/binance/android/binancepay/internal/activity/BinancePayActivity$a;

    iget-object p3, p0, La/a/a/a/b/b;->b:Landroid/content/Context;

    const-string v2, "context"

    .line 2
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_key_order_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_key_order_type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "extra_key_api_type"

    const-string v0, "c2c"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(context, BinanceP\u2026XTRA_KEY_API_TYPE, \"c2c\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p3, Landroid/app/Activity;

    if-nez p2, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
