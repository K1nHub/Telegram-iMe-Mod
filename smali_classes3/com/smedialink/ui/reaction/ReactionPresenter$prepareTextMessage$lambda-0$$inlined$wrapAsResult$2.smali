.class public final Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$lambda-0$$inlined$wrapAsResult$2;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/reaction/ReactionPresenter;->prepareTextMessage(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$wrapAsResult$2\n+ 2 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,81:1\n6#2:82\n*S KotlinDebug\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$wrapAsResult$2\n*L\n80#1:82\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/smedialink/storage/domain/model/Result<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-direct {v0, v1, p1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;-><init>(Lcom/smedialink/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/reaction/ReactionPresenter$prepareTextMessage$lambda-0$$inlined$wrapAsResult$2;->apply(Ljava/lang/Throwable;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
