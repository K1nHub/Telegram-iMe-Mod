.class public final synthetic Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->$r8$lambda$q1AFffJ-xO75uu-pcUDkFmV_S9c(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
