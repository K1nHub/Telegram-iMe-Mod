.class public final Lcom/smedialink/storage/domain/model/billing/CryptoProduct$Companion;
.super Ljava/lang/Object;
.source "CryptoProduct.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/billing/CryptoProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoProduct.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoProduct.kt\ncom/smedialink/storage/domain/model/billing/CryptoProduct$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,21:1\n3792#2:22\n4307#2,2:23\n1282#2,2:25\n*S KotlinDebug\n*F\n+ 1 CryptoProduct.kt\ncom/smedialink/storage/domain/model/billing/CryptoProduct$Companion\n*L\n16#1:22\n16#1:23,2\n18#1:25,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/billing/CryptoProduct$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllAvailableProducts()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/billing/CryptoProduct;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;->values()[Lcom/smedialink/storage/domain/model/billing/CryptoProduct;

    move-result-object v0

    .line 3792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 16
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;->isCustom()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 4307
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getProductByPrice(F)Lcom/smedialink/storage/domain/model/billing/CryptoProduct;
    .locals 6

    .line 18
    invoke-static {}, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;->values()[Lcom/smedialink/storage/domain/model/billing/CryptoProduct;

    move-result-object v0

    .line 1282
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 18
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;->getPriceInDollars()F

    move-result v5

    cmpg-float v5, v5, p1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 19
    sget-object v4, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;->PRODUCT_CUSTOM:Lcom/smedialink/storage/domain/model/billing/CryptoProduct;

    :cond_3
    return-object v4
.end method
