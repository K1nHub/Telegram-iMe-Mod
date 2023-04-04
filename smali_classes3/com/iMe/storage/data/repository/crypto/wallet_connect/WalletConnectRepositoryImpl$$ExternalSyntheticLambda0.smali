.class public final synthetic Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/iMe/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;->$r8$lambda$lw2i4OYUPbMxeHOOpTVQjaG_0vc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
