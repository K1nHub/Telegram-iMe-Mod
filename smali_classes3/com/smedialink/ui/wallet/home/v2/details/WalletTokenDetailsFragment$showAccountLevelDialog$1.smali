.class public final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;
.super Ljava/lang/Object;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lorg/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->showAccountLevelDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsFragment;)Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->changeRankVisibility(Z)V

    return-void
.end method
