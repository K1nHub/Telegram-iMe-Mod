.class Lorg/solovyev/android/checkout/CheckoutInventory$Worker$2;
.super Ljava/lang/Object;
.source "CheckoutInventory.java"

# interfaces
.implements Lorg/solovyev/android/checkout/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->loadSkus(Lorg/solovyev/android/checkout/BillingRequests;Lorg/solovyev/android/checkout/Inventory$Product;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/solovyev/android/checkout/RequestListener<",
        "Lorg/solovyev/android/checkout/Skus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/solovyev/android/checkout/CheckoutInventory$Worker;

.field final synthetic val$product:Lorg/solovyev/android/checkout/Inventory$Product;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/CheckoutInventory$Worker;Lorg/solovyev/android/checkout/Inventory$Product;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$2;->this$1:Lorg/solovyev/android/checkout/CheckoutInventory$Worker;

    iput-object p2, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$2;->val$product:Lorg/solovyev/android/checkout/Inventory$Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$2;->this$1:Lorg/solovyev/android/checkout/CheckoutInventory$Worker;

    invoke-static {p1}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->access$000(Lorg/solovyev/android/checkout/CheckoutInventory$Worker;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Lorg/solovyev/android/checkout/Skus;

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$2;->onSuccess(Lorg/solovyev/android/checkout/Skus;)V

    return-void
.end method

.method public onSuccess(Lorg/solovyev/android/checkout/Skus;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$2;->val$product:Lorg/solovyev/android/checkout/Inventory$Product;

    iget-object p1, p1, Lorg/solovyev/android/checkout/Skus;->list:Ljava/util/List;

    invoke-virtual {v0, p1}, Lorg/solovyev/android/checkout/Inventory$Product;->setSkus(Ljava/util/List;)V

    .line 127
    iget-object p1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$2;->this$1:Lorg/solovyev/android/checkout/CheckoutInventory$Worker;

    invoke-static {p1}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->access$000(Lorg/solovyev/android/checkout/CheckoutInventory$Worker;)V

    return-void
.end method
