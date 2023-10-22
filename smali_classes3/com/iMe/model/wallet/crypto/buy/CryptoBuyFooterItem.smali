.class public final Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "CryptoBuyFooterItem.kt"


# instance fields
.field private final description:I

.field private final title:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 7
    iput p1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->title:I

    .line 8
    iput p2, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->description:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;IIILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->title:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->description:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->copy(II)Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->title:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->description:I

    return v0
.end method

.method public final copy(II)Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;

    iget v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->title:I

    iget v3, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->title:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->description:I

    iget p1, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->description:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDescription()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->description:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->title:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->title:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->description:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBuyFooterItem(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->title:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;->description:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
