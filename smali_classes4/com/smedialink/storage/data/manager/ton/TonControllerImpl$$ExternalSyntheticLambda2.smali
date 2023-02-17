.class public final synthetic Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->$r8$lambda$RvhqmGkL_Y5G8wSj3n18FtbTX1U(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
