.class public final Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "CryptoBuyItem.kt"


# instance fields
.field private final product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

.field private final quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/billing/CryptoProduct;Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)V
    .locals 1

    const-string v0, "product"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 16
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    .line 17
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/billing/CryptoProduct;Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/billing/CryptoProduct;Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/billing/CryptoProduct;Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;ILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/billing/CryptoProduct;Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/billing/CryptoProduct;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/billing/CryptoProduct;Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;
    .locals 1

    const-string v0, "product"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/billing/CryptoProduct;Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    iget-object p1, p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAmount(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 3

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget v0, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_custom_price_dialog_toolbar_title:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    const-string v2, ""

    .line 30
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 26
    :cond_6
    :goto_2
    sget v0, Lorg/telegram/messenger/R$string;->common_dash:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final getPrice(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 3

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_max_price:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->getPriceInDollars()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatFiatBalance$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getProduct()Lcom/iMe/storage/domain/model/billing/CryptoProduct;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    return-object v0
.end method

.method public final getQuote()Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBuyItem(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->product:Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->quote:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
