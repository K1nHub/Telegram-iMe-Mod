.class public final Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/binance/android/binancepay/internal/activity/BinancePayActivity$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/binance/android/binancepay/internal/activity/BinancePayActivity$a;


# instance fields
.field public final a:Lcom/binance/android/binancepay/api/BinancePay;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/binance/android/binancepay/internal/activity/BinancePayActivity$a;

    .line 1
    invoke-direct {v0}, Lcom/binance/android/binancepay/internal/activity/BinancePayActivity$a;-><init>()V

    .line 2
    sput-object v0, Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;->b:Lcom/binance/android/binancepay/internal/activity/BinancePayActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    sget-object v0, Lcom/binance/android/binancepay/api/BinancePayFactory;->Companion:Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;

    invoke-virtual {v0, p0}, Lcom/binance/android/binancepay/api/BinancePayFactory$Companion;->getBinancePay(Landroid/content/Context;)Lcom/binance/android/binancepay/api/BinancePay;

    move-result-object v0

    iput-object v0, p0, Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;->a:Lcom/binance/android/binancepay/api/BinancePay;

    return-void
.end method


# virtual methods
.method public final a()V
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

    const-string v0, "/download?link=y874_b842f3f4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(\"https://www.b\u2026load?link=y874_b842f3f4\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4e2a

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;->a:Lcom/binance/android/binancepay/api/BinancePay;

    invoke-interface {p1}, Lcom/binance/android/binancepay/api/BinancePay;->getBinancePayListener()Lcom/binance/android/binancepay/api/BinancePayListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/binance/android/binancepay/api/BinancePayListener;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;->a:Lcom/binance/android/binancepay/api/BinancePay;

    invoke-interface {p1}, Lcom/binance/android/binancepay/api/BinancePay;->getBinancePayListener()Lcom/binance/android/binancepay/api/BinancePayListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/binance/android/binancepay/api/BinancePayListener;->onCancel()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_key_api_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "c2c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string v2, "context"

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.binance.dev"

    invoke-static {p0, v3}, La/a/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object p1, La/a/a/a/b/a;->c:La/a/a/a/b/a;

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "binance.pay.sdk.version"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_2

    .line 3
    sget-object p1, La/a/a/a/b/a;->b:La/a/a/a/b/a;

    goto :goto_1

    :cond_2
    sget-object p1, La/a/a/a/b/a;->a:La/a/a/a/b/a;

    .line 4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x0

    const-string v3, "btnClickListener"

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    goto/16 :goto_2

    .line 5
    :cond_3
    new-instance p1, La/a/a/a/b/d/a;

    sget v0, Lcom/binance/android/binancepay/R$string;->binance_pay_not_install_tip:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.binance_pay_not_install_tip)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/binance/android/binancepay/R$string;->binance_pay_install:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.binance_pay_install)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v0, v1}, La/a/a/a/b/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/b/c/a;

    invoke-direct {v0, p0, p1}, La/a/a/a/b/c/a;-><init>(Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;La/a/a/a/b/d/a;)V

    .line 6
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, La/a/a/a/b/d/a;->a:La/a/a/a/b/d/a$a;

    .line 7
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 8
    :cond_4
    new-instance p1, La/a/a/a/b/d/a;

    sget v0, Lcom/binance/android/binancepay/R$string;->binance_pay_version_not_support:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.binan\u2026_pay_version_not_support)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/binance/android/binancepay/R$string;->binance_pay_update:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.binance_pay_update)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0, v0, v1}, La/a/a/a/b/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/b/c/b;

    invoke-direct {v0, p0, p1}, La/a/a/a/b/c/b;-><init>(Lcom/binance/android/binancepay/internal/activity/BinancePayActivity;La/a/a/a/b/d/a;)V

    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p1, La/a/a/a/b/d/a;->a:La/a/a/a/b/d/a$a;

    .line 10
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 11
    :cond_5
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v0, "extra_key_sdk_version"

    const-string v1, "1.1.0"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.binance.dev.pay.BinancePaySDKEntryActivity"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x4e2a

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
