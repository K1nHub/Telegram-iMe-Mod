.class public final Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;
.super Ljava/lang/Object;
.source "CustomPriceValidator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/utils/validator/wallet/CustomPriceValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomPriceArgs"
.end annotation


# instance fields
.field private final fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

.field private final limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;)V
    .locals 1

    const-string v0, "fromCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "limits"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    .line 81
    iput-object p2, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;

    iget-object v1, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iget-object v3, p1, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    iget-object p1, p1, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFromCurrency()Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    return-object v0
.end method

.method public final getLimits()Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomPriceArgs(fromCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", limits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
