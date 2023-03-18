.class public abstract Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
.super Ljava/lang/Object;
.source "CentralizedExchangesInfo.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/model/wallet/swap/Exchange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Ascendeex;,
        Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Binance;,
        Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;,
        Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Gate;,
        Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;

.field private static final supportedExchanges$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final description:I

.field private final exchange:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;

.field private final logo:I

.field private final name:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;

    .line 43
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion$supportedExchanges$2;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion$supportedExchanges$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->supportedExchanges$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;III)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->exchange:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;

    .line 9
    iput p2, p0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->logo:I

    .line 10
    iput p3, p0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->name:I

    .line 11
    iput p4, p0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->description:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;III)V

    return-void
.end method

.method public static final synthetic access$getSupportedExchanges$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 7
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->supportedExchanges$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public getDescription()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->description:I

    return v0
.end method

.method public getExchange()Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->exchange:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;

    return-object v0
.end method

.method public getLogo()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->logo:I

    return v0
.end method

.method public getName()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->name:I

    return v0
.end method
