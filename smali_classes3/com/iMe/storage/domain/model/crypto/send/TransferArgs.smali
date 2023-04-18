.class public abstract Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;
.super Ljava/lang/Object;
.source "TransferArgs.kt"

# interfaces
.implements Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;,
        Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TON;,
        Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$TRON;
    }
.end annotation


# instance fields
.field private final amount:D

.field private final weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;


# direct methods
.method private constructor <init>(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->amount:D

    .line 10
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    return-void
.end method

.method public synthetic constructor <init>(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;-><init>(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;)V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->amount:D

    return-wide v0
.end method

.method public final getConvertedAmount()Ljava/math/BigInteger;
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->getWeiConvertUnit()Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->convertToWei(Ljava/lang/Number;Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected getWeiConvertUnit()Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;->weiConvertUnit:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    return-object v0
.end method
