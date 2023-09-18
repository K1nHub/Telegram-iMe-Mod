.class public final Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;
.super Lcom/iMe/model/wallet/select/SelectTokenScreenType;
.source "SelectTokenScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/select/SelectTokenScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Swap"
.end annotation


# instance fields
.field private final ignoredToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final swapDirection:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

.field private final swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string v0, "swapProtocol"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swapDirection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/select/SelectTokenScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p1, p0, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 15
    iput-object p2, p0, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;->swapDirection:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 16
    iput-object p3, p0, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;->ignoredToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method


# virtual methods
.method public final getIgnoredToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;->ignoredToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public final getSwapDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;->swapDirection:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public final getSwapProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;->swapProtocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method
