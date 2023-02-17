.class public final Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$lambda-3$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->getWalletConnectSavedSessions$lambda-3(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
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
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 WalletConnectRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl\n*L\n1#1,320:1\n69#2:321\n*E\n"
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

    .line 102
    check-cast p1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 69
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getDate()Ljava/util/Date;

    move-result-object p1

    check-cast p2, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    invoke-virtual {p2}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
