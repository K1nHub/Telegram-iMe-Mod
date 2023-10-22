.class public final Lcom/iMe/ui/wallet/send/WalletSendFragment$setupInputField$2$1$1;
.super Ljava/lang/Object;
.source "WalletSendFragment.kt"

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSendFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSendFragment.kt\ncom/iMe/ui/wallet/send/WalletSendFragment$setupInputField$2$1$1\n*L\n1#1,701:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupInputField$2$1$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendFragment$setupInputField$2$1$1;->this$0:Lcom/iMe/ui/wallet/send/WalletSendFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/send/WalletSendFragment;->access$getPresenter(Lcom/iMe/ui/wallet/send/WalletSendFragment;)Lcom/iMe/ui/wallet/send/WalletSendPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/send/WalletSendPresenter;->onMaxAmountClick()V

    return-void
.end method
