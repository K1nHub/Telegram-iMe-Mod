.class public final Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/binance/android/binancepay/api/BinancePayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBinancePay(Landroid/content/Context;)Lcom/binance/android/binancepay/api/BinancePay;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;->getInstance()Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/b;

    invoke-direct {v0, p1}, La/a/a/a/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;->setInstance(Lcom/binance/android/binancepay/api/BinancePay;)V

    invoke-virtual {p0}, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;->getInstance()Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;->getInstance()Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    return-object p1
.end method

.method public final getInstance()Lcom/binance/android/binancepay/api/BinancePay;
    .locals 1

    invoke-static {}, Lcom/binance/android/binancepay/api/BinancePayFactory;->access$getInstance$cp()Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object v0

    return-object v0
.end method

.method public final setInstance(Lcom/binance/android/binancepay/api/BinancePay;)V
    .locals 0

    invoke-static {p1}, Lcom/binance/android/binancepay/api/BinancePayFactory;->access$setInstance$cp(Lcom/binance/android/binancepay/api/BinancePay;)V

    return-void
.end method
