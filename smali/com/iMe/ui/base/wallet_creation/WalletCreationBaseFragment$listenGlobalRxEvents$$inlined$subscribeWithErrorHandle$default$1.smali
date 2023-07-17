.class public final Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;->listenGlobalRxEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletCreationBaseFragment.kt\ncom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment\n*L\n1#1,111:1\n22#2,7:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletCreated;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    instance-of p1, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$WalletRestored;

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment$listenGlobalRxEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;

    invoke-static {p1}, Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;->access$closeWalletCreationFragment(Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;)V

    :cond_1
    return-void
.end method
