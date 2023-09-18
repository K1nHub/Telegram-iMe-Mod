.class public final Lcom/iMe/bots/domain/model/ShopProduct;
.super Ljava/lang/Object;
.source "ShopProduct.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/domain/model/ShopProduct$Receipt;
    }
.end annotation


# instance fields
.field private final isPurchased:Z

.field private final price:Ljava/lang/String;

.field private final receipt:Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

.field private final sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/bots/domain/model/ShopProduct$Receipt;)V
    .locals 1

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->sku:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/iMe/bots/domain/model/ShopProduct;->price:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/iMe/bots/domain/model/ShopProduct;->isPurchased:Z

    .line 7
    iput-object p4, p0, Lcom/iMe/bots/domain/model/ShopProduct;->receipt:Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/bots/domain/model/ShopProduct;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/bots/domain/model/ShopProduct$Receipt;ILjava/lang/Object;)Lcom/iMe/bots/domain/model/ShopProduct;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->sku:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/bots/domain/model/ShopProduct;->price:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/iMe/bots/domain/model/ShopProduct;->isPurchased:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/bots/domain/model/ShopProduct;->receipt:Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/bots/domain/model/ShopProduct;->copy(Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/bots/domain/model/ShopProduct$Receipt;)Lcom/iMe/bots/domain/model/ShopProduct;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/bots/domain/model/ShopProduct;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/bots/domain/model/ShopProduct;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/bots/domain/model/ShopProduct;->isPurchased:Z

    return v0
.end method

.method public final component4()Lcom/iMe/bots/domain/model/ShopProduct$Receipt;
    .locals 1

    iget-object v0, p0, Lcom/iMe/bots/domain/model/ShopProduct;->receipt:Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/bots/domain/model/ShopProduct$Receipt;)Lcom/iMe/bots/domain/model/ShopProduct;
    .locals 1

    const-string v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/bots/domain/model/ShopProduct;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/bots/domain/model/ShopProduct;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/bots/domain/model/ShopProduct$Receipt;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/bots/domain/model/ShopProduct;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/bots/domain/model/ShopProduct;

    iget-object v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->sku:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/bots/domain/model/ShopProduct;->sku:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->price:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/bots/domain/model/ShopProduct;->price:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->isPurchased:Z

    iget-boolean v3, p1, Lcom/iMe/bots/domain/model/ShopProduct;->isPurchased:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->receipt:Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    iget-object p1, p1, Lcom/iMe/bots/domain/model/ShopProduct;->receipt:Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/bots/domain/model/ShopProduct;->price:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceipt()Lcom/iMe/bots/domain/model/ShopProduct$Receipt;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/bots/domain/model/ShopProduct;->receipt:Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/bots/domain/model/ShopProduct;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/bots/domain/model/ShopProduct;->sku:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->price:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->isPurchased:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->receipt:Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/ShopProduct$Receipt;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPurchased()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/iMe/bots/domain/model/ShopProduct;->isPurchased:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShopProduct(sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPurchased="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->isPurchased:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", receipt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/bots/domain/model/ShopProduct;->receipt:Lcom/iMe/bots/domain/model/ShopProduct$Receipt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
