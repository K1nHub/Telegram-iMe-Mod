.class public final Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateWalletTutorialFragment.kt\ncom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment\n*L\n1#1,111:1\n184#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessCreateWallet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessRestoreWallet;

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto :goto_1

    .line 115
    :cond_1
    instance-of p1, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$BackupFlowStarted;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$getTutorialType$p(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;

    move-result-object p1

    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Backup;

    if-nez p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_2
    :goto_1
    return-void
.end method
