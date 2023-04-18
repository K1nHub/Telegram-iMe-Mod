.class final Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoLocalWalletRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->unlockAllWallets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Wallet;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoLocalWalletRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoLocalWalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,114:1\n4098#2,11:115\n1549#3:126\n1620#3,3:127\n9#4:130\n*S KotlinDebug\n*F\n+ 1 CryptoLocalWalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2\n*L\n72#1:115,11\n72#1:126\n72#1:127,3\n76#1:130\n*E\n"
.end annotation


# instance fields
.field final synthetic $password:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2;->this$0:Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2;->$password:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke([Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4107
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    instance-of v4, v3, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2;->this$0:Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;

    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2;->$password:Ljava/lang/String;

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/Result$Success;

    .line 73
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/crypto/Wallet;

    .line 74
    invoke-static {p1}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->access$getCryptoAccessManager$p(Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->setWallet(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$unlockAllWallets$2;->invoke([Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
