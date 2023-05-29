.class public final synthetic Lcom/iMe/storage/data/manager/crypto/blockchains/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/EVMBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/crypto/blockchains/EVMBlockchainCryptoWalletManagerImpl;->$r8$lambda$Y2H_b0qSioV68nkC-vme-p8DKWo(Ljava/lang/String;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    return-object v0
.end method
