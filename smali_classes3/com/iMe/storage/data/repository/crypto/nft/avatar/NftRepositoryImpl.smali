.class public final Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl;
.super Ljava/lang/Object;
.source "NftRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/nft/avatar/NftRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNftRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NftRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,60:1\n70#2:61\n70#2:63\n26#3:62\n26#3:64\n*S KotlinDebug\n*F\n+ 1 NftRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl\n*L\n36#1:61\n54#1:63\n39#1:62\n57#1:64\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final nftApi:Lcom/iMe/storage/data/network/api/own/NftApi;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/NftApi;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "nftApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl;->nftApi:Lcom/iMe/storage/data/network/api/own/NftApi;

    .line 19
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 20
    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method


# virtual methods
.method public getOwnNftItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/nft/NftToken;",
            ">;>;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl;->nftApi:Lcom/iMe/storage/data/network/api/own/NftApi;

    .line 48
    new-instance v8, Lcom/iMe/storage/data/network/model/request/crypto/nft/OwnNftItemsRequest;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/request/crypto/nft/OwnNftItemsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    invoke-interface {v0, v8}, Lcom/iMe/storage/data/network/api/own/NftApi;->getOwnNftItems(Lcom/iMe/storage/data/network/model/request/crypto/nft/OwnNftItemsRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 54
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl$getOwnNftItems$$inlined$mapSuccess$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl$getOwnNftItems$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl$getOwnNftItems$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/crypto/nft/avatar/NftRepositoryImpl$getOwnNftItems$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
