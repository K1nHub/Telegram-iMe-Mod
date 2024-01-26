.class public final Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;
.super Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
.source "CentralizedExchangesInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unknown"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 36
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchange;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchange;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchangesInfo;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/CentralizedExchange;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
