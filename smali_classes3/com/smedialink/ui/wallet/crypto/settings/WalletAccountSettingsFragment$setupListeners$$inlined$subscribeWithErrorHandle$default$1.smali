.class public final Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletAccountSettingsFragment.kt\ncom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment\n*L\n1#1,111:1\n125#2,9:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;)Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->drawSettingsItems()V

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;->isLastWallet()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$2$1;

    invoke-direct {v3, v0}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$setupListeners$2$1;-><init>(Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/smedialink/ui/base/mvp/MvpFragment;->postViewActionDelayed$default(Lcom/smedialink/ui/base/mvp/MvpFragment;JLorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
