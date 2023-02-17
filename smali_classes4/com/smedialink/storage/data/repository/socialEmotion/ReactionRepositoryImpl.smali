.class public final Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;
.super Ljava/lang/Object;
.source "ReactionRepositoryImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/repository/socialEmotion/ReactionRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactionRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactionRepositoryImpl.kt\ncom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl\n+ 2 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,25:1\n70#2:26\n6#3:27\n*S KotlinDebug\n*F\n+ 1 ReactionRepositoryImpl.kt\ncom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl\n*L\n20#1:26\n21#1:27\n*E\n"
.end annotation


# instance fields
.field private final api:Lcom/smedialink/storage/data/network/api/own/ReactionApi;

.field private final errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

.field private final firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;


# direct methods
.method public static synthetic $r8$lambda$BalqrsLW2tTM4ogHYQ70xcHHuFw(Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->prepareLikeMessage$lambda-1(Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/smedialink/storage/data/network/api/own/ReactionApi;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V
    .locals 1

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseErrorHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/ReactionApi;

    .line 15
    iput-object p2, p0, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 16
    iput-object p3, p0, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    return-void
.end method

.method private static final prepareLikeMessage$lambda-1(Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;->handleError(Ljava/lang/Throwable;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p0

    .line 6
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public prepareLikeMessage(Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/data/network/model/request/reaction/ReactionMessageResult;",
            ">;>;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->api:Lcom/smedialink/storage/data/network/api/own/ReactionApi;

    invoke-interface {v0, p1}, Lcom/smedialink/storage/data/network/api/own/ReactionApi;->prepareLikeMessage(Lcom/smedialink/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->firebaseErrorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 70
    new-instance v1, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$$inlined$mapSuccess$1;

    invoke-direct {v1, v0}, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "errorHandler: FirebaseFu\u2026response).toError()\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/storage/data/repository/socialEmotion/ReactionRepositoryImpl;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "api.prepareLikeMessage(d\u2026ndleError(it).toError() }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
