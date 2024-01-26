.class public final Lcom/binance/android/opensdk/api/BinanceAPIFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/binance/android/opensdk/api/BinanceAPIFactory;

    invoke-direct {v0}, Lcom/binance/android/opensdk/api/BinanceAPIFactory;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createAPI(Landroid/app/Activity;)Lcom/binance/android/opensdk/api/BinanceAPI;
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/binance/android/opensdk/b/a;

    invoke-direct {v0, p0}, Lcom/binance/android/opensdk/b/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
