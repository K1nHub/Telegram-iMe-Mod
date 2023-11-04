.class final Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "WalletV3R2Contract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->loadContract(Lorg/ton/lite/client/LiteClient;Lorg/ton/block/AddrStd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion"
    f = "WalletV3R2Contract.kt"
    l = {
        0x79,
        0x7a
    }
    m = "loadContract"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->label:I

    iget-object p1, p0, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion$loadContract$1;->this$0:Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lcom/iMe/storage/data/manager/ton/WalletV3R2Contract$Companion;->loadContract(Lorg/ton/lite/client/LiteClient;Lorg/ton/block/AddrStd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
