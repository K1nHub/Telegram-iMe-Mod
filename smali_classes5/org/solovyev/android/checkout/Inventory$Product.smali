.class public final Lorg/solovyev/android/checkout/Inventory$Product;
.super Ljava/lang/Object;
.source "Inventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Inventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Product"
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field final mPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field final mSkus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Sku;",
            ">;"
        }
    .end annotation
.end field

.field public final supported:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mPurchases:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mSkus:Ljava/util/List;

    .line 190
    invoke-static {p1}, Lorg/solovyev/android/checkout/ProductTypes;->checkSupported(Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lorg/solovyev/android/checkout/Inventory$Product;->id:Ljava/lang/String;

    .line 192
    iput-boolean p2, p0, Lorg/solovyev/android/checkout/Inventory$Product;->supported:Z

    return-void
.end method


# virtual methods
.method public getPurchaseInState(Ljava/lang/String;Lorg/solovyev/android/checkout/Purchase$State;)Lorg/solovyev/android/checkout/Purchase;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mPurchases:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lorg/solovyev/android/checkout/Purchases;->getPurchaseInState(Ljava/util/List;Ljava/lang/String;Lorg/solovyev/android/checkout/Purchase$State;)Lorg/solovyev/android/checkout/Purchase;

    move-result-object p1

    return-object p1
.end method

.method public getPurchases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mPurchases:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSkus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Sku;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mSkus:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasPurchaseInState(Ljava/lang/String;Lorg/solovyev/android/checkout/Purchase$State;)Z
    .locals 0

    .line 204
    invoke-virtual {p0, p1, p2}, Lorg/solovyev/android/checkout/Inventory$Product;->getPurchaseInState(Ljava/lang/String;Lorg/solovyev/android/checkout/Purchase$State;)Lorg/solovyev/android/checkout/Purchase;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPurchased(Ljava/lang/String;)Z
    .locals 1

    .line 200
    sget-object v0, Lorg/solovyev/android/checkout/Purchase$State;->PURCHASED:Lorg/solovyev/android/checkout/Purchase$State;

    invoke-virtual {p0, p1, v0}, Lorg/solovyev/android/checkout/Inventory$Product;->hasPurchaseInState(Ljava/lang/String;Lorg/solovyev/android/checkout/Purchase$State;)Z

    move-result p1

    return p1
.end method

.method public isPurchased(Lorg/solovyev/android/checkout/Sku;)Z
    .locals 0

    .line 196
    iget-object p1, p1, Lorg/solovyev/android/checkout/Sku;->id:Lorg/solovyev/android/checkout/Sku$Id;

    iget-object p1, p1, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Inventory$Product;->isPurchased(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method setPurchases(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mPurchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 228
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mPurchases:Ljava/util/List;

    invoke-static {p1}, Lorg/solovyev/android/checkout/Purchases;->neutralize(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    iget-object p1, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mPurchases:Ljava/util/List;

    invoke-static {}, Lorg/solovyev/android/checkout/PurchaseComparator;->latestFirst()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method setSkus(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Sku;",
            ">;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mSkus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 242
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Product;->mSkus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
