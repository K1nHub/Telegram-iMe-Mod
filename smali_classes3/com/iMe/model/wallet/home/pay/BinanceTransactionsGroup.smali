.class public abstract Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;
.super Ljava/lang/Object;
.source "BinanceTransactionsGroup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$All;,
        Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Incoming;,
        Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup$Outgoing;
    }
.end annotation


# instance fields
.field private final id:I

.field private final nameResId:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;->id:I

    .line 10
    iput p2, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;->nameResId:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;-><init>(II)V

    return-void
.end method


# virtual methods
.method public abstract checkTransaction(Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)Z
.end method

.method public final getId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;->id:I

    return v0
.end method

.method public final getNameResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionsGroup;->nameResId:I

    return v0
.end method
