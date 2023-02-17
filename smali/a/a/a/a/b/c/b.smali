.class public final La/a/a/a/b/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/b/d/a$a;


# instance fields
.field public final synthetic a:Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;

.field public final synthetic b:La/a/a/a/b/d/a;


# direct methods
.method public constructor <init>(Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;La/a/a/a/b/d/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/b/d/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, La/a/a/a/b/c/b;->a:Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;

    iput-object p2, p0, La/a/a/a/b/c/b;->b:La/a/a/a/b/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, La/a/a/a/b/c/b;->b:La/a/a/a/b/d/a;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iget-object p1, p0, La/a/a/a/b/c/b;->a:Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;

    invoke-virtual {p1}, Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;->a()V

    iget-object p1, p0, La/a/a/a/b/c/b;->a:Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, La/a/a/a/b/c/b;->b:La/a/a/a/b/d/a;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iget-object p1, p0, La/a/a/a/b/c/b;->a:Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
