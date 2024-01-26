.class final Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AdnlClientImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlClientImpl;->sendQuery-8Mi8wO0(Lio/ktor/utils/io/core/ByteReadPacket;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.adnl.connection.AdnlClientImpl"
    f = "AdnlClientImpl.kt"
    l = {
        0x16
    }
    m = "sendQuery-8Mi8wO0"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/ton/adnl/connection/AdnlClientImpl;


# direct methods
.method constructor <init>(Lorg/ton/adnl/connection/AdnlClientImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/adnl/connection/AdnlClientImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->this$0:Lorg/ton/adnl/connection/AdnlClientImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->result:Ljava/lang/Object;

    iget p1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->label:I

    iget-object p1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->this$0:Lorg/ton/adnl/connection/AdnlClientImpl;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Lorg/ton/adnl/connection/AdnlClientImpl;->sendQuery-8Mi8wO0(Lio/ktor/utils/io/core/ByteReadPacket;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
