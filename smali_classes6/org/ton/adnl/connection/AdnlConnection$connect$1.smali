.class final Lorg/ton/adnl/connection/AdnlConnection$connect$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AdnlConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlConnection;->connect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.adnl.connection.AdnlConnection"
    f = "AdnlConnection.kt"
    l = {
        0x5b
    }
    m = "connect"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/ton/adnl/connection/AdnlConnection;


# direct methods
.method constructor <init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/adnl/connection/AdnlConnection;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlConnection$connect$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->result:Ljava/lang/Object;

    iget p1, p0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->label:I

    iget-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    invoke-static {p1, p0}, Lorg/ton/adnl/connection/AdnlConnection;->access$connect(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
