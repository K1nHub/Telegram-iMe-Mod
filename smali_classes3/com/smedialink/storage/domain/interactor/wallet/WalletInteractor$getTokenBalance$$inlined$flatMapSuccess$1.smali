.class public final Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 WalletInteractor.kt\ncom/smedialink/storage/domain/interactor/wallet/WalletInteractor\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,81:1\n52#2,2:82\n8#3:84\n18#4:85\n*S KotlinDebug\n*F\n+ 1 WalletInteractor.kt\ncom/smedialink/storage/domain/interactor/wallet/WalletInteractor\n*L\n53#1:84\n53#1:85\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/reactivex/Observable;->never()Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "never()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
