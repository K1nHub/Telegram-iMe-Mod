.class public final Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->login(Ljava/lang/String;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 WalletSessionInteractor.kt\ncom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,81:1\n70#2,3:82\n73#2:86\n74#2,2:88\n15#3:85\n15#3:87\n*S KotlinDebug\n*F\n+ 1 WalletSessionInteractor.kt\ncom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor\n*L\n72#1:85\n73#1:87\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 4
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

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->access$getWalletRepository$p(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;->activateWallet()Lio/reactivex/Observable;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$lambda-4$$inlined$flatMapSuccess$1;

    iget-object v2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$lambda-4$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v2, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$lambda-4$$inlined$flatMapSuccess$2;

    iget-object v3, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-direct {v2, v3}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$lambda-4$$inlined$flatMapSuccess$2;-><init>(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$1$3;

    invoke-direct {v1, p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$1$3;-><init>(Lcom/smedialink/storage/domain/model/Result;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->access$getSchedulersProvider$p(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "result ->\n              \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

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
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
