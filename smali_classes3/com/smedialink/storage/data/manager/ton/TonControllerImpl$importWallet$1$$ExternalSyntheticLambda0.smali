.class public final synthetic Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    iget-object v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$importWallet$1;->$r8$lambda$OfMowKTc9S6kvXA5SK6eDL--Eus(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
