.class public final synthetic Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda9;->f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda9;->f$0:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    iget-object v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->$r8$lambda$ryIryeCHnV0gAVt5Ag4aq_LRiFE(Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
