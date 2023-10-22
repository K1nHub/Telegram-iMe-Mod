.class final Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$1$1;
.super Ljava/lang/Object;
.source "WalletDonationsPresenter.kt"

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->linkAddress(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $address:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$1$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$1$1;->$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$1$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$1$1;->$address:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$saveDonationAddress(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V

    return-void
.end method
