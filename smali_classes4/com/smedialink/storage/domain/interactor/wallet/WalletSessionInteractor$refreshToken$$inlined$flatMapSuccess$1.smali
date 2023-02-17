.class public final Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->refreshToken(Ljava/lang/String;)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 WalletSessionInteractor.kt\ncom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,81:1\n31#2,4:82\n35#2,4:87\n15#3:86\n18#4:91\n*S KotlinDebug\n*F\n+ 1 WalletSessionInteractor.kt\ncom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor\n*L\n34#1:86\n38#1:91\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

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

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->access$getPreferenceHelper$p(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getPushAllowanceToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->access$getNotificationRepository$p(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;->issuePushAllowanceToken()Lio/reactivex/Observable;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$lambda-1$$inlined$flatMapSuccess$1;

    iget-object v2, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-direct {v1, v2}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$lambda-1$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$1$2;

    invoke-direct {v1, p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$1$2;-><init>(Lcom/smedialink/storage/domain/model/Result;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->access$getSchedulersProvider$p(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "result ->\n              \u2026())\n                    }"

    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

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

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
