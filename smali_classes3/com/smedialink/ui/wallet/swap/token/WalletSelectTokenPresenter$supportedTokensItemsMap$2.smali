.class final Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSelectTokenPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;-><init>(Lcom/smedialink/model/wallet/select/SelectableType;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lcom/smedialink/model/wallet/select/SelectableTokenItem;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSelectTokenPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1208#2,2:132\n1238#2,4:134\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2\n*L\n33#1:132,2\n33#1:134,4\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/smedialink/model/wallet/select/SelectableTokenItem;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2;->this$0:Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getSupportedTokens$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 1208
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1209
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1238
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1239
    check-cast v1, Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 33
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/smedialink/model/wallet/select/SelectableTokenItem;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6, v5, v6}, Lcom/smedialink/model/wallet/select/SelectableTokenItem;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/model/wallet/select/SelectableTokenBalance;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1239
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method
