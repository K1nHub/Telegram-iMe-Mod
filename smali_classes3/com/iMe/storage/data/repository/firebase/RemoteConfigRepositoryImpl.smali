.class public final Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl;
.super Ljava/lang/Object;
.source "RemoteConfigRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/firebase/RemoteConfigRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteConfigRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,40:1\n32#2:41\n32#2:42\n32#2:43\n32#2:44\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl\n*L\n20#1:41\n26#1:42\n32#1:43\n38#1:44\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final remoteConfigApi:Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;


# direct methods
.method public static synthetic $r8$lambda$GUpcbRSpWe-1VNDzTJH_b30Djb8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl;->getBoolean$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "remoteConfigApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl;->remoteConfigApi:Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;

    .line 13
    iput-object p2, p0, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method private static final getBoolean$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl;->remoteConfigApi:Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;

    .line 18
    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;->getBoolean(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 19
    sget-object v0, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1;->INSTANCE:Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$getBoolean$1;

    new-instance v1, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "remoteConfigApi\n        \u2026  .map { it.toSuccess() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/data/repository/firebase/RemoteConfigRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 32
    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$handleError$2;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$handleError$2;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
