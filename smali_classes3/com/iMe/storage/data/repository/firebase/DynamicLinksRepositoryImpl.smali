.class public final Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl;
.super Ljava/lang/Object;
.source "DynamicLinksRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/firebase/DynamicLinksRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicLinksRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicLinksRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,29:1\n26#2:30\n*S KotlinDebug\n*F\n+ 1 DynamicLinksRepositoryImpl.kt\ncom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl\n*L\n24#1:30\n*E\n"
.end annotation


# instance fields
.field private final dynamicLinksApi:Lcom/iMe/storage/data/network/api/google/DynamicLinksApi;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;


# direct methods
.method public static synthetic $r8$lambda$NthTm-NpdTTGwdogDcnh0U1Hoxw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->getLink$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/api/google/DynamicLinksApi;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "dynamicLinksApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->dynamicLinksApi:Lcom/iMe/storage/data/network/api/google/DynamicLinksApi;

    .line 15
    iput-object p2, p0, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method private static final getLink$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method


# virtual methods
.method public getLink(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/google/DynamicLinkData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->dynamicLinksApi:Lcom/iMe/storage/data/network/api/google/DynamicLinksApi;

    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/iMe/storage/data/network/api/google/DynamicLinksApi;->getLink(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 23
    sget-object p2, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1;->INSTANCE:Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$1;

    new-instance v0, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "dynamicLinksApi\n        \u2026ponse.link).toSuccess() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$$inlined$handleError$1;

    invoke-direct {v0, p2}, Lcom/iMe/storage/data/repository/firebase/DynamicLinksRepositoryImpl$getLink$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
