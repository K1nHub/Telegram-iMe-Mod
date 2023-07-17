.class final Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensSettings(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Unit;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,331:1\n18#2:332\n*S KotlinDebug\n*F\n+ 1 WalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2\n*L\n175#1:332\n*E\n"
.end annotation


# instance fields
.field final synthetic $networkId:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2;->$networkId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Unit;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    invoke-static {p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2;->$networkId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTokensSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 174
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2;->invoke(Lkotlin/Unit;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
