.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getSortedTokens$$inlined$compareByDescending$2;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getSortedTokens()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 WalletHomeCryptoPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter\n*L\n1#1,328:1\n477#2:329\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 121
    check-cast p2, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 477
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 121
    check-cast p1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 477
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 121
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
