.class public final synthetic Lcom/smedialink/storage/data/manager/crypto/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/crypto/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/crypto/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/smedialink/storage/data/manager/crypto/TRONBlockchainCryptoWalletManagerImpl;->$r8$lambda$K4A4RNl8GHUDcQkd9yK54DsM0uM(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    return-object v0
.end method
