.class public final Lcom/binance/android/binancepay/api/BinancePayFactory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;

.field public static instance:Lcom/binance/android/binancepay/api/BinancePay;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/binance/android/binancepay/api/BinancePayFactory;->Companion:Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/binance/android/binancepay/api/BinancePay;
    .locals 1

    sget-object v0, Lcom/binance/android/binancepay/api/BinancePayFactory;->instance:Lcom/binance/android/binancepay/api/BinancePay;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/binance/android/binancepay/api/BinancePay;)V
    .locals 0

    sput-object p0, Lcom/binance/android/binancepay/api/BinancePayFactory;->instance:Lcom/binance/android/binancepay/api/BinancePay;

    return-void
.end method
