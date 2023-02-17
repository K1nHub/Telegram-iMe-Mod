.class final Lorg/solovyev/android/checkout/CheckoutInventory;
.super Lorg/solovyev/android/checkout/BaseInventory;
.source "CheckoutInventory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/solovyev/android/checkout/CheckoutInventory$Worker;
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/Checkout;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/BaseInventory;-><init>(Lorg/solovyev/android/checkout/Checkout;)V

    return-void
.end method


# virtual methods
.method protected createWorker(Lorg/solovyev/android/checkout/BaseInventory$Task;)Ljava/lang/Runnable;
    .locals 1

    .line 145
    new-instance v0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;

    invoke-direct {v0, p0, p1}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;-><init>(Lorg/solovyev/android/checkout/CheckoutInventory;Lorg/solovyev/android/checkout/BaseInventory$Task;)V

    return-object v0
.end method
