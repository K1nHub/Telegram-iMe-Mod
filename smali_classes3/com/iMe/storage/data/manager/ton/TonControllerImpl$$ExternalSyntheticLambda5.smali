.class public final synthetic Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ldrinkless/org/ton/TonApi$InputKeyRegular;

.field public final synthetic f$2:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ldrinkless/org/ton/TonApi$InputKeyRegular;Lcom/iMe/storage/data/manager/ton/TonControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;->f$1:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    iput-object p3, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;->f$2:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;->f$1:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    iget-object v2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda5;->f$2:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-static {v0, v1, v2, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->$r8$lambda$y7DEbuBUcVoBEUY5xeGxt4bV5yI(Ljava/util/List;Ldrinkless/org/ton/TonApi$InputKeyRegular;Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
