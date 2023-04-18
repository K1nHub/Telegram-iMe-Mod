.class public final Lcom/iMe/storage/data/utils/extentions/RxExtKt$handleError$2;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt$handleError$2\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,38:1\n7#2:39\n*S KotlinDebug\n*F\n+ 1 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt$handleError$2\n*L\n32#1:39\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/iMe/storage/data/network/handlers/ErrorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/data/network/handlers/ErrorHandler<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/ErrorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/handlers/ErrorHandler<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$handleError$2;->$errorHandler:Lcom/iMe/storage/data/network/handlers/ErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/iMe/storage/domain/model/Result<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/data/utils/extentions/RxExtKt$handleError$2;->$errorHandler:Lcom/iMe/storage/data/network/handlers/ErrorHandler;

    invoke-interface {v0, p1}, Lcom/iMe/storage/data/network/handlers/ErrorHandler;->handleError(Ljava/lang/Object;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt$handleError$2;->apply(Ljava/lang/Throwable;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
