.class public final Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;
.super Ljava/lang/Object;
.source "BuyingCryptoQuote.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote$Companion;
    }
.end annotation


# static fields
.field private static final CUSTOM_QUOTE:Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

.field public static final Companion:Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote$Companion;


# instance fields
.field private final cryptoMoneyAmount:F

.field private final fiatMoneyAmount:F

.field private final quoteId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->Companion:Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote$Companion;

    .line 11
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    const-string v1, ""

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2, v2}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;-><init>(Ljava/lang/String;FF)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->CUSTOM_QUOTE:Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 1

    const-string v0, "quoteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->quoteId:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->cryptoMoneyAmount:F

    .line 8
    iput p3, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->fiatMoneyAmount:F

    return-void
.end method

.method public static final synthetic access$getCUSTOM_QUOTE$cp()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;
    .locals 1

    .line 5
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->CUSTOM_QUOTE:Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;Ljava/lang/String;FFILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->quoteId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->cryptoMoneyAmount:F

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->fiatMoneyAmount:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->copy(Ljava/lang/String;FF)Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->cryptoMoneyAmount:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->fiatMoneyAmount:F

    return v0
.end method

.method public final copy(Ljava/lang/String;FF)Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;
    .locals 1

    const-string v0, "quoteId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    invoke-direct {v0, p1, p2, p3}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;-><init>(Ljava/lang/String;FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->quoteId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->quoteId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->cryptoMoneyAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->cryptoMoneyAmount:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->fiatMoneyAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->fiatMoneyAmount:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCryptoMoneyAmount()F
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->cryptoMoneyAmount:F

    return v0
.end method

.method public final getFiatMoneyAmount()F
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->fiatMoneyAmount:F

    return v0
.end method

.method public final getQuoteId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->quoteId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->quoteId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->cryptoMoneyAmount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->fiatMoneyAmount:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuyingCryptoQuote(quoteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->quoteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cryptoMoneyAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->cryptoMoneyAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fiatMoneyAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->fiatMoneyAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
