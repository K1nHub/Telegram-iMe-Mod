.class public final Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;->getTokensSettings(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
        "Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n+ 2 WalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/wallet/WalletRepositoryImpl\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,86:1\n168#2,7:87\n7#3:94\n18#4:95\n*S KotlinDebug\n*F\n+ 1 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$flatMapSuccess$1\n*L\n84#1:94\n84#1:95\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic $networkId$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    iput-object p3, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;

    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$1;-><init>(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 93
    new-instance v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2;

    iget-object v1, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;

    iget-object v2, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;->$networkId$inlined:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$3$2;-><init>(Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl;Ljava/lang/String;)V

    new-instance v1, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$sam$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$sam$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "override fun getTokensSe\u2026          }\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1$1;->INSTANCE:Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1$1;

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/wallet/WalletRepositoryImpl$getTokensSettings$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
