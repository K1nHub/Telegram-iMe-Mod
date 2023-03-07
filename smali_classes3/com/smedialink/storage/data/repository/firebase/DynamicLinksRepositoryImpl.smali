.class public final Lcom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl;
.super Ljava/lang/Object;
.source "DynamicLinksRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/firebase/DynamicLinksRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicLinksRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicLinksRepositoryImpl.kt\ncom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl\n+ 2 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,29:1\n26#2:30\n8#3:31\n*S KotlinDebug\n*F\n+ 1 DynamicLinksRepositoryImpl.kt\ncom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl\n*L\n24#1:30\n23#1:31\n*E\n"
.end annotation


# instance fields
.field private final dynamicLinksApi:Lcom/smedialink/storage/data/network/api/google/DynamicLinksApi;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;


# direct methods
.method public static synthetic $r8$lambda$q0JyxcgUn8YCa3gPC0dQBrkaPig(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->getLink$lambda-0(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/storage/data/network/api/google/DynamicLinksApi;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "dynamicLinksApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->dynamicLinksApi:Lcom/smedialink/storage/data/network/api/google/DynamicLinksApi;

    .line 15
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method private static final getLink$lambda-0(Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;)Lcom/smedialink/storage/domain/model/Result;
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/smedialink/storage/domain/model/google/DynamicLinkData;->Companion:Lcom/smedialink/storage/domain/model/google/DynamicLinkData$Companion;

    invoke-virtual {p0}, Lcom/google/firebase/dynamiclinks/PendingDynamicLinkData;->getLink()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/google/DynamicLinkData$Companion;->parseDynamicLink(Landroid/net/Uri;)Lcom/smedialink/storage/domain/model/google/DynamicLinkData;

    move-result-object p0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLink(Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/google/DynamicLinkData;",
            ">;>;"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->dynamicLinksApi:Lcom/smedialink/storage/data/network/api/google/DynamicLinksApi;

    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/smedialink/storage/data/network/api/google/DynamicLinksApi;->getLink(Lcom/smedialink/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object p2, Lcom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl$$ExternalSyntheticLambda0;

    .line 23
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "dynamicLinksApi\n        \u2026ponse.link).toSuccess() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/smedialink/storage/data/repository/firebase/DynamicLinksRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 26
    new-instance v0, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;

    invoke-direct {v0, p2}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt$handleError$1;-><init>(Lcom/smedialink/storage/data/network/handlers/ErrorHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
