.class public final synthetic Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;->f$1:[B

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$$ExternalSyntheticLambda3;->f$1:[B

    invoke-static {v0, v1}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->$r8$lambda$UqlkkB4szk3bioQOQqAAUed48S8(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;[B)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    return-object v0
.end method
