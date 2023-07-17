.class public final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Binance;
.super Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;
.source "WalletSelectTokenFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binance"
.end annotation


# instance fields
.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "tokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Binance;->tokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType$Binance;->tokens:Ljava/util/List;

    return-object v0
.end method
