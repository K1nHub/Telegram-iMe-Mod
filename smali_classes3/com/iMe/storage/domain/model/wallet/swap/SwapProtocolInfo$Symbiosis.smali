.class public final Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;
.super Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.source "SwapProtocolInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Symbiosis"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 35
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->SYMBIOSIS:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 36
    sget v3, Lcom/iMe/storage/R$drawable;->fork_ic_symdiosis_92:I

    .line 37
    sget v4, Lcom/iMe/storage/R$string;->wallet_swap_protocols_symbiosis_name:I

    .line 38
    sget v5, Lcom/iMe/storage/R$string;->wallet_swap_protocols_symbiosis_description:I

    .line 39
    sget v6, Lcom/iMe/storage/R$string;->wallet_swap_protocols_symbiosis_long_description:I

    const-string v0, "BINANCE_SMART_CHAIN"

    const-string v1, "POLYGON"

    .line 40
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    .line 34
    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;-><init>(Ljava/util/List;IIIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
