.class public final Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;
.super Ljava/lang/Object;
.source "TranslationRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/translate/TranslationRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTranslationRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranslationRepositoryImpl.kt\ncom/iMe/storage/data/repository/translate/TranslationRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 4 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,95:1\n766#2:96\n857#2,2:97\n26#3:99\n26#3:101\n70#4:100\n*S KotlinDebug\n*F\n+ 1 TranslationRepositoryImpl.kt\ncom/iMe/storage/data/repository/translate/TranslationRepositoryImpl\n*L\n47#1:96\n47#1:97,2\n76#1:99\n83#1:101\n82#1:100\n*E\n"
.end annotation


# instance fields
.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field private final googleServicesApi:Lcom/iMe/storage/data/network/api/own/GoogleServicesApi;

.field private final googleTranslationApi:Lcom/iMe/storage/data/network/api/own/GoogleTranslationApi;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private final userAgents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GeFbyP-RCDzscxX3pEaO9ltYHeQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->translate$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IcKP5cFvUCNLkSiVsVTE8oi7AiA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->translate$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/GoogleServicesApi;Lcom/iMe/storage/data/network/api/own/GoogleTranslationApi;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;)V
    .locals 7

    const-string v0, "googleServicesApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleTranslationApi"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->googleServicesApi:Lcom/iMe/storage/data/network/api/own/GoogleServicesApi;

    .line 22
    iput-object p2, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->googleTranslationApi:Lcom/iMe/storage/data/network/api/own/GoogleTranslationApi;

    .line 23
    iput-object p3, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 24
    iput-object p4, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 25
    iput-object p5, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;

    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36"

    const-string v2, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0"

    const-string v3, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36"

    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36"

    const-string v5, "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:94.0) Gecko/20100101 Firefox/94.0"

    const-string v6, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36"

    .line 35
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->userAgents:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getGoogleTranslationApi$p(Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;)Lcom/iMe/storage/data/network/api/own/GoogleTranslationApi;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->googleTranslationApi:Lcom/iMe/storage/data/network/api/own/GoogleTranslationApi;

    return-object p0
.end method

.method public static final synthetic access$getUserAgents$p(Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->userAgents:Ljava/util/List;

    return-object p0
.end method

.method private static final translate$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final translate$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method


# virtual methods
.method public languages()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/translation/TranslationLanguage;",
            ">;>;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->googleServicesApi:Lcom/iMe/storage/data/network/api/own/GoogleServicesApi;

    .line 81
    invoke-interface {v0}, Lcom/iMe/storage/data/network/api/own/GoogleServicesApi;->getTranslationLanguages()Lio/reactivex/Observable;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v2, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$languages$$inlined$mapSuccess$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$languages$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;

    .line 26
    new-instance v2, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$languages$$inlined$handleError$1;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$languages$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance v1, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/translation/Translation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetLanguage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    const/16 v1, 0x400

    .line 46
    invoke-interface {v0, p1, v1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->cutInBlocks(Ljava/lang/CharSequence;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "\n"

    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {v0}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    new-instance v1, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;-><init>(Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance p2, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, v1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    .line 67
    sget-object p2, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2;->INSTANCE:Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2;

    new-instance p3, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "override fun translate(\n\u2026Error(errorHandler)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/GoogleServicesErrorHandler;

    .line 26
    new-instance p3, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$$inlined$handleError$1;

    invoke-direct {p3, p2}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$$inlined$handleError$1;-><init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V

    new-instance p2, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, p3}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "errorHandler: ErrorHandl\u2026ndleError(it).toError() }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
