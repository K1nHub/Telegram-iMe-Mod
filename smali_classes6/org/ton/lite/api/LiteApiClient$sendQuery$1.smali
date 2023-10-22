.class final Lorg/ton/lite/api/LiteApiClient$sendQuery$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "LiteApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/lite/api/LiteApiClient$DefaultImpls;->sendQuery(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.lite.api.LiteApiClient$DefaultImpls"
    f = "LiteApiClient.kt"
    l = {
        0x1a
    }
    m = "sendQuery"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/lite/api/LiteApiClient$sendQuery$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->result:Ljava/lang/Object;

    iget p1, p0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->label:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lorg/ton/lite/api/LiteApiClient$DefaultImpls;->sendQuery(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
