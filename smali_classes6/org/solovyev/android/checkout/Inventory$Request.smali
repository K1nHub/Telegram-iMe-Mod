.class public final Lorg/solovyev/android/checkout/Inventory$Request;
.super Ljava/lang/Object;
.source "Inventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Inventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field private final mProducts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSkus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mSkus:Ljava/util/Map;

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mProducts:Ljava/util/Set;

    .line 267
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

    .line 268
    iget-object v2, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mSkus:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create()Lorg/solovyev/android/checkout/Inventory$Request;
    .locals 1

    .line 288
    new-instance v0, Lorg/solovyev/android/checkout/Inventory$Request;

    invoke-direct {v0}, Lorg/solovyev/android/checkout/Inventory$Request;-><init>()V

    return-object v0
.end method


# virtual methods
.method copy()Lorg/solovyev/android/checkout/Inventory$Request;
    .locals 3

    .line 274
    new-instance v0, Lorg/solovyev/android/checkout/Inventory$Request;

    invoke-direct {v0}, Lorg/solovyev/android/checkout/Inventory$Request;-><init>()V

    .line 275
    iget-object v1, v0, Lorg/solovyev/android/checkout/Inventory$Request;->mSkus:Ljava/util/Map;

    iget-object v2, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mSkus:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 276
    iget-object v1, v0, Lorg/solovyev/android/checkout/Inventory$Request;->mProducts:Ljava/util/Set;

    iget-object v2, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mProducts:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method getSkus(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mSkus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public loadAllPurchases()Lorg/solovyev/android/checkout/Inventory$Request;
    .locals 2

    .line 299
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mProducts:Ljava/util/Set;

    sget-object v1, Lorg/solovyev/android/checkout/ProductTypes;->ALL:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public loadSkus(Ljava/lang/String;Ljava/lang/String;)Lorg/solovyev/android/checkout/Inventory$Request;
    .locals 1

    .line 350
    invoke-static {p1}, Lorg/solovyev/android/checkout/ProductTypes;->checkSupported(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mSkus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 354
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 355
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public loadSkus(Ljava/lang/String;Ljava/util/List;)Lorg/solovyev/android/checkout/Inventory$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/solovyev/android/checkout/Inventory$Request;"
        }
    .end annotation

    .line 339
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    invoke-virtual {p0, p1, v0}, Lorg/solovyev/android/checkout/Inventory$Request;->loadSkus(Ljava/lang/String;Ljava/lang/String;)Lorg/solovyev/android/checkout/Inventory$Request;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method shouldLoadPurchases(Ljava/lang/String;)Z
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mProducts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method shouldLoadSkus(Ljava/lang/String;)Z
    .locals 1

    .line 360
    invoke-static {p1}, Lorg/solovyev/android/checkout/ProductTypes;->checkSupported(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lorg/solovyev/android/checkout/Inventory$Request;->mSkus:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
