.class public final synthetic Lcom/smedialink/storage/data/manager/crypto/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/crypto/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/crypto/TRONBlockchainCryptoWalletManagerImpl$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/manager/crypto/TRONBlockchainCryptoWalletManagerImpl;->$r8$lambda$S0OMoBYSvUgJ8duGPrEraML_7Bo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
