.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->setupEventListeners()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateWalletFragment.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletFragment\n*L\n1#1,111:1\n897#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessRecreateWalletByPassword;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessResetWallet;

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    .line 115
    :cond_1
    instance-of p1, p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessRestoreWallet;

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getCurrentType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 116
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$setupEventListeners$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_3
    return-void
.end method
