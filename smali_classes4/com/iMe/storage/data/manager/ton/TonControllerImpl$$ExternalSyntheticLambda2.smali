.class public final synthetic Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {v0, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->$r8$lambda$cuitgeowMBI-XQmXL8f7ZtCHfcg(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
