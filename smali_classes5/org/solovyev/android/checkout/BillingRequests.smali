.class public interface abstract Lorg/solovyev/android/checkout/BillingRequests;
.super Ljava/lang/Object;
.source "BillingRequests.java"


# virtual methods
.method public abstract getAllPurchases(Ljava/lang/String;Lorg/solovyev/android/checkout/RequestListener;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchases;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getSkus(Ljava/lang/String;Ljava/util/List;Lorg/solovyev/android/checkout/RequestListener;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Skus;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/solovyev/android/checkout/PurchaseFlow;)I
.end method
