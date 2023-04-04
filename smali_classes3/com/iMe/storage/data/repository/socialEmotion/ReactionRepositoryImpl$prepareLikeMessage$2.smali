.class final Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReactionRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->prepareLikeMessage(Lcom/iMe/storage/data/network/model/request/reaction/ReactionRequestData;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactionRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactionRepositoryImpl.kt\ncom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$2\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,25:1\n7#2:26\n*S KotlinDebug\n*F\n+ 1 ReactionRepositoryImpl.kt\ncom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$2\n*L\n21#1:26\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$2;->this$0:Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/data/network/model/request/reaction/ReactionMessageResult;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$2;->this$0:Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;->access$getErrorHandler$p(Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl;)Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler;->handleError(Ljava/lang/Throwable;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/socialEmotion/ReactionRepositoryImpl$prepareLikeMessage$2;->invoke(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
