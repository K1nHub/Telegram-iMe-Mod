.class public final synthetic Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

.field public final synthetic f$1:Ldrinkless/org/ton/TonApi$Function;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;->f$1:Ldrinkless/org/ton/TonApi$Function;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    iget-object v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda1;->f$1:Ldrinkless/org/ton/TonApi$Function;

    invoke-static {v0, v1, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->$r8$lambda$HD9hwSbkYHzGEs8hYroUe5dL50o(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
