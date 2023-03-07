.class public final Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda-1$$inlined$mapSuccess$1;
.super Ljava/lang/Object;
.source "ObservableExt.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation(J)Lio/reactivex/Observable;
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
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$mapSuccess$1\n+ 2 AccountLevelInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,81:1\n51#2,5:82\n8#3:87\n*S KotlinDebug\n*F\n+ 1 AccountLevelInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor\n*L\n55#1:87\n*E\n"
.end annotation


# instance fields
.field final synthetic $accountLevelResult$inlined:Lcom/smedialink/storage/domain/model/Result;

.field final synthetic $userId$inlined:J

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/Result;JLcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda-1$$inlined$mapSuccess$1;->$accountLevelResult$inlined:Lcom/smedialink/storage/domain/model/Result;

    iput-wide p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda-1$$inlined$mapSuccess$1;->$userId$inlined:J

    iput-object p4, p0, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda-1$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/smedialink/storage/domain/model/Result;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;

    .line 83
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda-1$$inlined$mapSuccess$1;->$accountLevelResult$inlined:Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    .line 84
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 85
    iget-wide v2, p0, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda-1$$inlined$mapSuccess$1;->$userId$inlined:J

    iget-object v4, p0, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda-1$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    invoke-static {v4}, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;->access$getTelegramGateway$p(Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v4

    invoke-interface {v4}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 82
    :goto_0
    invoke-direct {v0, v1, p1, v2}, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;-><init>(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;ZZ)V

    .line 8
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    goto :goto_1

    .line 30
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    goto :goto_1

    .line 31
    :cond_2
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor$getAccountLevelInformation$lambda-1$$inlined$mapSuccess$1;->apply(Lcom/smedialink/storage/domain/model/Result;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
