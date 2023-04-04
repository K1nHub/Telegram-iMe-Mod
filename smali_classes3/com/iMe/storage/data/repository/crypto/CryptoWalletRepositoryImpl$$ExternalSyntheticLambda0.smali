.class public final synthetic Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl;

.field public final synthetic f$1:Lcom/iMe/storage/domain/model/crypto/BlockchainType;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl;

    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->$r8$lambda$AIveJ_XfzKfVgjwoySNgvQbyUy4(Lcom/iMe/storage/data/repository/crypto/CryptoWalletRepositoryImpl;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
