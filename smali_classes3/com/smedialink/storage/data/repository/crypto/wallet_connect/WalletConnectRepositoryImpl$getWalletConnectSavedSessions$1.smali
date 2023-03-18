.class final Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->getWalletConnectSavedSessions()Lio/reactivex/Flowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,88:1\n1549#2:89\n1620#2,3:90\n1045#2:93\n8#3:94\n*S KotlinDebug\n*F\n+ 1 WalletConnectRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1\n*L\n68#1:89\n68#1:90,3\n69#1:93\n70#1:94\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1;->INSTANCE:Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
            ">;>;"
        }
    .end annotation

    const-string v0, "sessions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;

    .line 68
    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/wallet/WalletConnectSessionMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/wallet/WalletConnectSessionDb;)Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_0
    new-instance p1, Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1$invoke$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1$invoke$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1;->invoke(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
