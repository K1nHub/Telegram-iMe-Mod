.class public final Lcom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt$mapToTokensSettings$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt;->mapToTokensSettings(Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;)Ljava/util/List;
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
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1\n+ 2 DisplayedTokensMapping.kt\ncom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt\n*L\n1#1,328:1\n16#2:329\n*E\n"
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
    check-cast p2, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;

    .line 16
    invoke-virtual {p2}, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->isCoin()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 121
    check-cast p1, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;

    .line 16
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->isCoin()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 121
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
