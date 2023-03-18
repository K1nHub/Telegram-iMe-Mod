.class public final Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;
.super Ljava/lang/Object;
.source "AirdropRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/airdrop/AirdropRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAirdropRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AirdropRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,87:1\n70#2:88\n70#2:90\n70#2:92\n26#3:89\n26#3:91\n26#3:93\n*S KotlinDebug\n*F\n+ 1 AirdropRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl\n*L\n38#1:88\n59#1:90\n81#1:92\n48#1:89\n70#1:91\n82#1:93\n*E\n"
.end annotation


# instance fields
.field private final airdropApi:Lcom/smedialink/storage/data/network/api/own/AirdropApi;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/AirdropApi;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "airdropApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->airdropApi:Lcom/smedialink/storage/data/network/api/own/AirdropApi;

    .line 24
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 25
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 26
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method


# virtual methods
.method public checkAirdropStart(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/airdrop/CheckAirdropPromotionStartRequest;

    .line 53
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-direct {v0, p2, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/airdrop/CheckAirdropPromotionStartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->airdropApi:Lcom/smedialink/storage/data/network/api/own/AirdropApi;

    .line 58
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/AirdropApi;->checkStart(Lcom/smedialink/storage/data/network/model/request/crypto/airdrop/CheckAirdropPromotionStartRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;

    invoke-direct {v0, p2, p0}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTokensByAirdrop(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/airdrop/GetTokensByAirdropPromotionRequest;

    .line 75
    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-direct {v0, p2, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/airdrop/GetTokensByAirdropPromotionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->airdropApi:Lcom/smedialink/storage/data/network/api/own/AirdropApi;

    .line 80
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/AirdropApi;->getTokens(Lcom/smedialink/storage/data/network/model/request/crypto/airdrop/GetTokensByAirdropPromotionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$getTokensByAirdrop$$inlined$mapSuccess$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$getTokensByAirdrop$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$getTokensByAirdrop$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$getTokensByAirdrop$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public registerInAirdrop(Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/smedialink/storage/data/network/model/request/crypto/airdrop/RegisterInAirdropPromotionRequest;

    .line 33
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/airdrop/RegisterInAirdropPromotionRequest;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->airdropApi:Lcom/smedialink/storage/data/network/api/own/AirdropApi;

    .line 37
    invoke-interface {p1, v0}, Lcom/smedialink/storage/data/network/api/own/AirdropApi;->register(Lcom/smedialink/storage/data/network/model/request/crypto/airdrop/RegisterInAirdropPromotionRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1;

    invoke-direct {v1, v0, p0}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
