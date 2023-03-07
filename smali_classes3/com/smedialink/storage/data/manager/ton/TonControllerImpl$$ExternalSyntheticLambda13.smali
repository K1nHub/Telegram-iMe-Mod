.class public final synthetic Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ldrinkless/org/ton/TonApi$InputKeyRegular;

.field public final synthetic f$3:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ldrinkless/org/ton/TonApi$InputKeyRegular;Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda13;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda13;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda13;->f$2:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    iput-object p4, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda13;->f$3:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda13;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda13;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda13;->f$2:Ldrinkless/org/ton/TonApi$InputKeyRegular;

    iget-object v3, p0, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda13;->f$3:Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;->$r8$lambda$jY474sm-3vVeq74aQuvECSO1EW4(Ljava/lang/String;Ljava/util/List;Ldrinkless/org/ton/TonApi$InputKeyRegular;Lcom/smedialink/storage/data/manager/ton/TonControllerImpl;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
