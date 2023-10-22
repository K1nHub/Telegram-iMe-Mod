.class final synthetic Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$setupCryptoBoxDetailsScreen$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "WalletTokenDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->setupCryptoBoxDetailsScreen(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Number;",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/iMe/utils/formatter/BalanceFormatter;

    const/4 v1, 0x2

    const-string v4, "formatTokenBalance"

    const-string v5, "formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 370
    check-cast p1, Ljava/lang/Number;

    check-cast p2, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$setupCryptoBoxDetailsScreen$1$1;->invoke(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
