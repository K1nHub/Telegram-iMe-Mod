.class public final Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingProgrammesPresenter.kt\ncom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter\n*L\n1#1,111:1\n281#2:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingProgrammesRefresh;

    .line 281
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;->reload$default(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZILjava/lang/Object;)V

    return-void
.end method
