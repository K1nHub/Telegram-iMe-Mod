.class public final Lorg/solovyev/android/checkout/Sku$Price;
.super Ljava/lang/Object;
.source "Sku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Sku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Price"
.end annotation


# static fields
.field public static final EMPTY:Lorg/solovyev/android/checkout/Sku$Price;


# instance fields
.field public final amount:J

.field public final currency:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 296
    new-instance v0, Lorg/solovyev/android/checkout/Sku$Price;

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lorg/solovyev/android/checkout/Sku$Price;-><init>(JLjava/lang/String;)V

    sput-object v0, Lorg/solovyev/android/checkout/Sku$Price;->EMPTY:Lorg/solovyev/android/checkout/Sku$Price;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-wide p1, p0, Lorg/solovyev/android/checkout/Sku$Price;->amount:J

    .line 309
    iput-object p3, p0, Lorg/solovyev/android/checkout/Sku$Price;->currency:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lorg/solovyev/android/checkout/Sku$Price;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 293
    invoke-static {p0}, Lorg/solovyev/android/checkout/Sku$Price;->regularPriceFromJson(Lorg/json/JSONObject;)Lorg/solovyev/android/checkout/Sku$Price;

    move-result-object p0

    return-object p0
.end method

.method protected static introductoryPriceFromJson(Lorg/json/JSONObject;)Lorg/solovyev/android/checkout/Sku$Price;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "introductoryPriceAmountMicros"

    .line 325
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "price_currency_code"

    .line 326
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 327
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    new-instance v2, Lorg/solovyev/android/checkout/Sku$Price;

    invoke-direct {v2, v0, v1, p0}, Lorg/solovyev/android/checkout/Sku$Price;-><init>(JLjava/lang/String;)V

    return-object v2

    .line 328
    :cond_1
    :goto_0
    sget-object p0, Lorg/solovyev/android/checkout/Sku$Price;->EMPTY:Lorg/solovyev/android/checkout/Sku$Price;

    return-object p0
.end method

.method private static regularPriceFromJson(Lorg/json/JSONObject;)Lorg/solovyev/android/checkout/Sku$Price;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "price_amount_micros"

    .line 314
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "price_currency_code"

    .line 315
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    new-instance v2, Lorg/solovyev/android/checkout/Sku$Price;

    invoke-direct {v2, v0, v1, p0}, Lorg/solovyev/android/checkout/Sku$Price;-><init>(JLjava/lang/String;)V

    return-object v2

    .line 317
    :cond_1
    :goto_0
    sget-object p0, Lorg/solovyev/android/checkout/Sku$Price;->EMPTY:Lorg/solovyev/android/checkout/Sku$Price;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/solovyev/android/checkout/Sku$Price;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/solovyev/android/checkout/Sku$Price;->amount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
