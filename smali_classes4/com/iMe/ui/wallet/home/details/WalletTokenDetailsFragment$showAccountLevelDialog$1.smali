.class public final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;
.super Ljava/lang/Object;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lcom/iMe/fork/ui/dialog/AccountLevelAlert$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$showAccountLevelDialog$1;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->changeRankVisibility(Z)V

    return-void
.end method
