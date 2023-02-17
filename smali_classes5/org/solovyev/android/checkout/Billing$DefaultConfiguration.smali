.class public abstract Lorg/solovyev/android/checkout/Billing$DefaultConfiguration;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Lorg/solovyev/android/checkout/Billing$Configuration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultConfiguration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCache()Lorg/solovyev/android/checkout/Cache;
    .locals 1

    .line 725
    invoke-static {}, Lorg/solovyev/android/checkout/Billing;->newCache()Lorg/solovyev/android/checkout/Cache;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackInventory(Lorg/solovyev/android/checkout/Checkout;Ljava/util/concurrent/Executor;)Lorg/solovyev/android/checkout/Inventory;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPurchaseVerifier()Lorg/solovyev/android/checkout/PurchaseVerifier;
    .locals 1

    const-string v0, "Default purchase verification procedure is used, please read https://github.com/serso/android-checkout#purchase-verification"

    .line 731
    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->warning(Ljava/lang/String;)V

    .line 732
    invoke-interface {p0}, Lorg/solovyev/android/checkout/Billing$Configuration;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->newPurchaseVerifier(Ljava/lang/String;)Lorg/solovyev/android/checkout/PurchaseVerifier;

    move-result-object v0

    return-object v0
.end method

.method public isAutoConnect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
