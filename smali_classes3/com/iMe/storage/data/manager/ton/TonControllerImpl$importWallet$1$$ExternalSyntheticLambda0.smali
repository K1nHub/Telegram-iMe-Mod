.class public final synthetic Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$importWallet$1;->$r8$lambda$5TNvPBvAyATCwQVSi2gU18wPWWE(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/util/List;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method