.class public final synthetic Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/manager/wallet/create/WalletCreateManager;

.field public final synthetic f$1:Lcom/iMe/storage/domain/model/crypto/BlockchainType;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    iput-object p2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/manager/wallet/create/WalletCreateManager;

    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-static {v0, v1, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->$r8$lambda$qBeBqfVSg2lJxCkk-qNqKwhTu1M(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Landroid/content/DialogInterface;I)V

    return-void
.end method
