.class public Lcom/stripe/android/net/CardParser;
.super Ljava/lang/Object;
.source "CardParser.java"


# static fields
.field static final FIELD_ADDRESS_CITY:Ljava/lang/String; = "address_city"

.field static final FIELD_ADDRESS_COUNTRY:Ljava/lang/String; = "address_country"

.field static final FIELD_ADDRESS_LINE1:Ljava/lang/String; = "address_line1"

.field static final FIELD_ADDRESS_LINE2:Ljava/lang/String; = "address_line2"

.field static final FIELD_ADDRESS_STATE:Ljava/lang/String; = "address_state"

.field static final FIELD_ADDRESS_ZIP:Ljava/lang/String; = "address_zip"

.field static final FIELD_BRAND:Ljava/lang/String; = "brand"

.field static final FIELD_COUNTRY:Ljava/lang/String; = "country"

.field static final FIELD_CURRENCY:Ljava/lang/String; = "currency"

.field static final FIELD_EXP_MONTH:Ljava/lang/String; = "exp_month"

.field static final FIELD_EXP_YEAR:Ljava/lang/String; = "exp_year"

.field static final FIELD_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field static final FIELD_FUNDING:Ljava/lang/String; = "funding"

.field static final FIELD_LAST4:Ljava/lang/String; = "last4"

.field static final FIELD_NAME:Ljava/lang/String; = "name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCard(Ljava/lang/String;)Lcom/stripe/android/model/Card;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Lcom/stripe/android/net/CardParser;->parseCard(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;

    move-result-object p0

    return-object p0
.end method

.method public static parseCard(Lorg/json/JSONObject;)Lcom/stripe/android/model/Card;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 55
    new-instance v19, Lcom/stripe/android/model/Card;

    move-object/from16 v1, v19

    const-string v2, "exp_month"

    .line 57
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "exp_year"

    .line 58
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v2, "name"

    .line 60
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "address_line1"

    .line 61
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "address_line2"

    .line 62
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "address_city"

    .line 63
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "address_state"

    .line 64
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "address_zip"

    .line 65
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "address_country"

    .line 66
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "brand"

    .line 67
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/android/util/StripeTextUtils;->asCardBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "last4"

    .line 68
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "fingerprint"

    .line 69
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "funding"

    .line 70
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/android/util/StripeTextUtils;->asFundingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v2, "country"

    .line 71
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v2, "currency"

    .line 72
    invoke-static {v0, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/stripe/android/model/Card;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v19
.end method
