.class public final Lorg/ton/adnl/connection/AdnlRequestData;
.super Ljava/lang/Object;
.source "AdnlRequestData.kt"


# instance fields
.field private final body:[B

.field private final executionContext:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>([BLkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executionContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlRequestData;->body:[B

    .line 13
    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlRequestData;->executionContext:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getBody()[B
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlRequestData;->body:[B

    return-object v0
.end method
