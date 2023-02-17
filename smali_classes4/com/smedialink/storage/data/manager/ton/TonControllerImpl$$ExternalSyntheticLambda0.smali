.class public final synthetic Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ldrinkless/org/ton/Client$ResultHandler;


# instance fields
.field public final synthetic f$0:Ldrinkless/org/ton/TonApi$Function;

.field public final synthetic f$1:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;->f$0:Ldrinkless/org/ton/TonApi$Function;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;->f$1:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onResult(Ldrinkless/org/ton/TonApi$Object;)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;->f$0:Ldrinkless/org/ton/TonApi$Function;

    iget-object v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda0;->f$1:Lio/reactivex/ObservableEmitter;

    invoke-static {v0, v1, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->$r8$lambda$795EGVp7DPaawQ6pSWKKIUKmsWc(Ldrinkless/org/ton/TonApi$Function;Lio/reactivex/ObservableEmitter;Ldrinkless/org/ton/TonApi$Object;)V

    return-void
.end method
