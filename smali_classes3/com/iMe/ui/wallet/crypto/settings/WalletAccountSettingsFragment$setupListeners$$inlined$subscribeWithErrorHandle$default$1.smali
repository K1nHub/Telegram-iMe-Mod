.class public final Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;->setupListeners()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletAccountSettingsFragment.kt\ncom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment\n*L\n1#1,111:1\n125#2,10:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;)Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->drawSettingsItems()V

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;->isLastWallet()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$2$1;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$2$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/ui/base/mvp/MvpFragment;->postViewActionDelayed$default(Lcom/iMe/ui/base/mvp/MvpFragment;JLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
