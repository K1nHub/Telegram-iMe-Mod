.class final Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "TonControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->sendInternal(Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.iMe.storage.data.manager.ton.TonControllerImpl"
    f = "TonControllerImpl.kt"
    l = {
        0xa6,
        0xa9,
        0xa8
    }
    m = "sendInternal"
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/manager/ton/TonControllerImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->label:I

    iget-object v0, p0, Lcom/iMe/storage/data/manager/ton/TonControllerImpl$sendInternal$1;->this$0:Lcom/iMe/storage/data/manager/ton/TonControllerImpl;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/iMe/storage/data/manager/ton/TonControllerImpl;->access$sendInternal(Lcom/iMe/storage/data/manager/ton/TonControllerImpl;Ljava/lang/String;JILcom/iMe/storage/domain/model/crypto/send/TonTransactionPayload;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
