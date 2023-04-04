.class public final Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;
.super Ljava/lang/Object;
.source "TonConfigRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/crypto/ton/TonConfigRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonConfigRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,36:1\n26#2:37\n*S KotlinDebug\n*F\n+ 1 TonConfigRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl\n*L\n32#1:37\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public static synthetic $r8$lambda$JC6HOrqH7LqzOhcJMkLp1ee2IgU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;->getTonConfigJsonString$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nQQF6WpIo-ARw_bO-TiMhlMULpw(Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;->getTonConfigJsonString$lambda$0(Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;Lokhttp3/OkHttpClient;)V
    .locals 1

    const-string v0, "errorHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 15
    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private static final getTonConfigJsonString$lambda$0(Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;)Lokhttp3/Response;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 24
    sget-object v1, Lcom/iMe/storage/common/AppConfiguration$Ton;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Ton;

    invoke-virtual {v1}, Lcom/iMe/storage/common/AppConfiguration$Ton;->getTonConfigFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 27
    iget-object p0, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static final getTonConfigJsonString$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method


# virtual methods
.method public getTonConfigJsonString()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2;->INSTANCE:Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$2;

    new-instance v2, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "fromCallable {\n         \u2026s()\n                    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/crypto/ton/TonConfigRepositoryImpl$getTonConfigJsonString$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
