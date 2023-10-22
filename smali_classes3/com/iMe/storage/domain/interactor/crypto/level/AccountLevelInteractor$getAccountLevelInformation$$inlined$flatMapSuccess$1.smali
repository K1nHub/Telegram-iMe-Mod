.class public final Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation(J)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 AccountLevelInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,101:1\n33#2,3:102\n43#2,5:112\n29#3,7:105\n18#4:117\n18#5:118\n*S KotlinDebug\n*F\n+ 1 AccountLevelInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor\n*L\n35#1:105,7\n47#1:117\n47#1:118\n*E\n"
.end annotation


# instance fields
.field final synthetic $userId$inlined:J

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;


# direct methods
.method public constructor <init>(JLcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;)V
    .locals 0

    iput-wide p1, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->$userId$inlined:J

    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_2

    .line 102
    iget-wide v0, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->$userId$inlined:J

    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    invoke-static {v2}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->access$getTelegramGateway$p(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getLevelVisibility()Lio/reactivex/Observable;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;

    iget-wide v2, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->$userId$inlined:J

    iget-object v4, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/domain/model/Result;JLcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_0
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    .line 113
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 115
    iget-wide v1, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->$userId$inlined:J

    iget-object v3, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    invoke-static {v3}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->access$getTelegramGateway$p(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v3

    invoke-interface {v3}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 112
    :goto_0
    invoke-direct {v0, p1, v2, v1}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;-><init>(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;ZZ)V

    .line 18
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
