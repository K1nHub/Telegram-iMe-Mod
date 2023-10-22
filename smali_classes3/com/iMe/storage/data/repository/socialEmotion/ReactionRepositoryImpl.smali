.class public final Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;
.super Ljava/lang/Object;
.source "ReactionRepositoryImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/repository/socialEmotion/ReactionRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactionRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactionRepositoryImpl.kt\ncom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt\n*L\n1#1,27:1\n70#2:28\n*S KotlinDebug\n*F\n+ 1 ReactionRepositoryImpl.kt\ncom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl\n*L\n22#1:28\n*E\n"
.end annotation


# instance fields
.field private final api:Lcom/iMe/storage/data/network/api/own/ReactionApi;

.field private final errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method public static synthetic $r8$lambda$rUhP2SNE391DJo76hBStp5qMC2M(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->prepareLikeMessage$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/data/network/api/own/ReactionApi;Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->api:Lcom/iMe/storage/data/network/api/own/ReactionApi;

    .line 16
    iput-object p2, p0, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 17
    iput-object p3, p0, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method public static final synthetic access$getErrorHandler$p(Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;)Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->errorHandler:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    return-object p0
.end method

.method private static final prepareLikeMessage$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
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
.method public prepareLikeMessage(Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;",
            ">;>;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->api:Lcom/iMe/storage/data/network/api/own/ReactionApi;

    invoke-interface {v0, p1}, Lcom/iMe/storage/data/network/api/own/ReactionApi;->prepareLikeMessage(Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->firebaseErrorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    new-instance v0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$2;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$2;-><init>(Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;)V

    new-instance v1, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "override fun prepareLike\u2026ror(it).toError() }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
