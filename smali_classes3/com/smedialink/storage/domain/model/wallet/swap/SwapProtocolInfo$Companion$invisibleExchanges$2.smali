.class final Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$invisibleExchanges$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwapProtocolInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$UniswapV3;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$invisibleExchanges$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$invisibleExchanges$2;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$invisibleExchanges$2;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$invisibleExchanges$2;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$invisibleExchanges$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$invisibleExchanges$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$UniswapV3;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$UniswapV3;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$UniswapV3;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
