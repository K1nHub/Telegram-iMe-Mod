.class final Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensBalance(Ljava/util/List;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
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
        "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,173:1\n1549#2:174\n1620#2,3:175\n766#2:178\n857#2,2:179\n1045#2:181\n8#3:182\n*S KotlinDebug\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2\n*L\n108#1:174\n108#1:175,3\n109#1:178\n109#1:179,2\n110#1:181\n111#1:182\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;->INSTANCE:Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;"
        }
    .end annotation

    const-string v0, "balances"

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
    check-cast v1, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    .line 108
    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt;->mapToDomain(Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 766
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 109
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_1

    .line 857
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1045
    :cond_3
    new-instance v0, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2$invoke$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2$invoke$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl$getTokensBalance$2;->invoke(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
