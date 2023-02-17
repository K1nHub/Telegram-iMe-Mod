.class public final Lorg/solovyev/android/checkout/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/solovyev/android/checkout/Purchase$State;
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/String;

.field public final orderId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final signature:Ljava/lang/String;

.field public final sku:Ljava/lang/String;

.field public final state:Lorg/solovyev/android/checkout/Purchase$State;

.field public final time:J

.field public final token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "productId"

    .line 93
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    const-string v1, "orderId"

    .line 94
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/solovyev/android/checkout/Purchase;->orderId:Ljava/lang/String;

    const-string v1, "packageName"

    .line 95
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/solovyev/android/checkout/Purchase;->packageName:Ljava/lang/String;

    const-string v1, "purchaseTime"

    .line 96
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/solovyev/android/checkout/Purchase;->time:J

    const-string v1, "purchaseState"

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lorg/solovyev/android/checkout/Purchase$State;->valueOf(I)Lorg/solovyev/android/checkout/Purchase$State;

    move-result-object v1

    iput-object v1, p0, Lorg/solovyev/android/checkout/Purchase;->state:Lorg/solovyev/android/checkout/Purchase$State;

    const-string v1, "developerPayload"

    .line 98
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "purchaseToken"

    .line 99
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/solovyev/android/checkout/Purchase;->token:Ljava/lang/String;

    const-string v1, "autoRenewing"

    .line 100
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 101
    iput-object p1, p0, Lorg/solovyev/android/checkout/Purchase;->data:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lorg/solovyev/android/checkout/Purchase;->signature:Ljava/lang/String;

    return-void
.end method

.method static fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/solovyev/android/checkout/Purchase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/solovyev/android/checkout/Purchase;

    invoke-direct {v0, p0, p1}, Lorg/solovyev/android/checkout/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/solovyev/android/checkout/Purchase;->state:Lorg/solovyev/android/checkout/Purchase$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/solovyev/android/checkout/Purchase;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sku=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
