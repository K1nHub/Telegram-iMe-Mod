.class public final Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Gate;
.super Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
.source "CentralizedExchangesInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gate"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Gate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Gate;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Gate;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Gate;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Gate;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 22
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchange;->GATE:Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchange;

    .line 23
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_gate_io_92:I

    .line 24
    sget v3, Lcom/iMe/storage/R$string;->wallet_centralized_exchange_gate_name:I

    .line 25
    sget v4, Lcom/iMe/storage/R$string;->wallet_centralized_exchange_gate_description:I

    const/4 v5, 0x0

    move-object v0, p0

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchange;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
