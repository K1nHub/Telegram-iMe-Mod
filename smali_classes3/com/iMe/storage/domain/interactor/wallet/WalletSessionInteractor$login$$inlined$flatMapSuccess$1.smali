.class public final Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->login(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 WalletSessionInteractor.kt\ncom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,80:1\n68#2,3:81\n71#2:85\n72#2,2:87\n14#3:84\n14#3:86\n*S KotlinDebug\n*F\n+ 1 WalletSessionInteractor.kt\ncom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor\n*L\n70#1:84\n71#1:86\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->access$getWalletRepository$p(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/wallet/WalletRepository;->activateWallet()Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$lambda$4$$inlined$flatMapSuccess$1;

    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-direct {v1, v2}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$lambda$4$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)V

    new-instance v2, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v2, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$lambda$4$$inlined$flatMapSuccess$2;

    iget-object v3, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-direct {v2, v3}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$lambda$4$$inlined$flatMapSuccess$2;-><init>(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)V

    new-instance v3, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v3, v2}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$1$3;

    invoke-direct {v1, p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$1$3;-><init>(Lcom/iMe/storage/domain/model/Result;)V

    new-instance p1, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$sam$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$sam$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "result ->\n              \u2026(schedulersProvider.io())"

    .line 87
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method