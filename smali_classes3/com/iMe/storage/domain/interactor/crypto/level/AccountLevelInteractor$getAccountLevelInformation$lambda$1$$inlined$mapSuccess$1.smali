.class public final Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$mapSuccess$1\n+ 2 AccountLevelInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,80:1\n37#2,5:81\n9#3:86\n*S KotlinDebug\n*F\n+ 1 AccountLevelInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor\n*L\n41#1:86\n*E\n"
.end annotation


# instance fields
.field final synthetic $accountLevelResult$inlined:Lcom/iMe/storage/domain/model/Result;

.field final synthetic $userId$inlined:J

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/Result;JLcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;->$accountLevelResult$inlined:Lcom/iMe/storage/domain/model/Result;

    iput-wide p2, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;->$userId$inlined:J

    iput-object p4, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;

    .line 82
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;->$accountLevelResult$inlined:Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 83
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 84
    iget-wide v2, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;->$userId$inlined:J

    iget-object v4, p0, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    invoke-static {v4}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->access$getTelegramGateway$p(Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;)Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v4

    invoke-interface {v4}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 81
    :goto_0
    invoke-direct {v0, v1, p1, v2}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;-><init>(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;ZZ)V

    .line 9
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    goto :goto_1

    .line 29
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_2
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda$1$$inlined$mapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
