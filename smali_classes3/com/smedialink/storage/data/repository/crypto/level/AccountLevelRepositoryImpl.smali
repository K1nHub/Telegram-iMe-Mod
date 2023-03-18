.class public final Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;
.super Ljava/lang/Object;
.source "AccountLevelRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/crypto/level/AccountLevelRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountLevelRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountLevelRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 4 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,82:1\n70#2:83\n70#2:87\n70#2:91\n26#3:84\n18#3:86\n26#3:88\n18#3:90\n26#3:92\n8#4:85\n8#4:89\n*S KotlinDebug\n*F\n+ 1 AccountLevelRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl\n*L\n36#1:83\n48#1:87\n65#1:91\n40#1:84\n44#1:86\n52#1:88\n57#1:90\n78#1:92\n44#1:85\n57#1:89\n*E\n"
.end annotation


# instance fields
.field private final accountLevelApi:Lcom/smedialink/storage/data/network/api/own/AccountLevelApi;

.field private final cachedUserAccountLevel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedUserAccountLevelVisibility:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/AccountLevelApi;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "accountLevelApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->accountLevelApi:Lcom/smedialink/storage/data/network/api/own/AccountLevelApi;

    .line 21
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 22
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 23
    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 24
    iput-object p5, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cachedUserAccountLevel:Ljava/util/HashMap;

    .line 29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cachedUserAccountLevelVisibility:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getCachedUserAccountLevel$p(Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;)Ljava/util/HashMap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cachedUserAccountLevel:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getCachedUserAccountLevelVisibility$p(Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;)Ljava/util/HashMap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cachedUserAccountLevelVisibility:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getTelegramGateway$p(Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    return-object p0
.end method


# virtual methods
.method public changeLevelVisibility(Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->accountLevelApi:Lcom/smedialink/storage/data/network/api/own/AccountLevelApi;

    .line 35
    new-instance v1, Lcom/smedialink/storage/data/network/model/request/crypto/level/ChangeRankVisibilityRequest;

    invoke-direct {v1, p1}, Lcom/smedialink/storage/data/network/model/request/crypto/level/ChangeRankVisibilityRequest;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/AccountLevelApi;->changeLevelVisibility(Lcom/smedialink/storage/data/network/model/request/crypto/level/ChangeRankVisibilityRequest;)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$changeLevelVisibility$$inlined$mapSuccess$1;

    invoke-direct {v1, v0, p0}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$changeLevelVisibility$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v1, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$changeLevelVisibility$$inlined$handleError$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$changeLevelVisibility$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAccountLevel(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;",
            ">;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cachedUserAccountLevel:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cachedUserAccountLevel:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    sget-object v1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "just(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    .line 59
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->getAccountLevelRemote(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    invoke-static {v0, p1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "concat(\n                \u2026ote(userId)\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAccountLevelRemote(J)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->accountLevelApi:Lcom/smedialink/storage/data/network/api/own/AccountLevelApi;

    .line 64
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/data/network/api/own/AccountLevelApi;->getAccountLevel(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;

    invoke-direct {v2, v1, p0, p1, p2}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;J)V

    new-instance p1, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v2}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getLevelVisibility()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cachedUserAccountLevelVisibility:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->cachedUserAccountLevelVisibility:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    sget-object v1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "just(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->accountLevelApi:Lcom/smedialink/storage/data/network/api/own/AccountLevelApi;

    .line 47
    invoke-interface {v1}, Lcom/smedialink/storage/data/network/api/own/AccountLevelApi;->getLevelVisibility()Lio/reactivex/Observable;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v3, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getLevelVisibility$$inlined$mapSuccess$1;

    invoke-direct {v3, v2, p0}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getLevelVisibility$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;)V

    new-instance v2, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v3}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v3, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getLevelVisibility$$inlined$handleError$1;

    invoke-direct {v3, v2}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getLevelVisibility$$inlined$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    new-instance v2, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v3}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {v0, v1}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "concat(\n                \u2026rorHandler)\n            )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
