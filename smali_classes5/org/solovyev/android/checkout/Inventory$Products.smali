.class public final Lorg/solovyev/android/checkout/Inventory$Products;
.super Ljava/lang/Object;
.source "Inventory.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Inventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Products"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/solovyev/android/checkout/Inventory$Product;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/solovyev/android/checkout/Inventory$Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lorg/solovyev/android/checkout/Inventory$Products;

    invoke-direct {v0}, Lorg/solovyev/android/checkout/Inventory$Products;-><init>()V

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Products;->mMap:Ljava/util/Map;

    .line 104
    sget-object v0, Lorg/solovyev/android/checkout/ProductTypes;->ALL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lorg/solovyev/android/checkout/Inventory$Products;->mMap:Ljava/util/Map;

    new-instance v3, Lorg/solovyev/android/checkout/Inventory$Product;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/solovyev/android/checkout/Inventory$Product;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method add(Lorg/solovyev/android/checkout/Inventory$Product;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Products;->mMap:Ljava/util/Map;

    iget-object v1, p1, Lorg/solovyev/android/checkout/Inventory$Product;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Lorg/solovyev/android/checkout/Inventory$Product;
    .locals 1

    .line 124
    invoke-static {p1}, Lorg/solovyev/android/checkout/ProductTypes;->checkSupported(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Products;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/solovyev/android/checkout/Inventory$Product;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/solovyev/android/checkout/Inventory$Product;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Products;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method merge(Lorg/solovyev/android/checkout/Inventory$Products;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Products;->mMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/solovyev/android/checkout/Inventory$Product;

    iget-boolean v2, v2, Lorg/solovyev/android/checkout/Inventory$Product;->supported:Z

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p1, Lorg/solovyev/android/checkout/Inventory$Products;->mMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/solovyev/android/checkout/Inventory$Product;

    if-eqz v2, :cond_0

    .line 148
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
