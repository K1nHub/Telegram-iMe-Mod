.class public final Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;
.super Ljava/lang/Object;
.source "ApiBaseResponse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final code:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final payload:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final status:Lcom/iMe/storage/data/network/model/response/base/Status;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/base/Status;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/network/model/response/base/Status;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->code:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->message:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->payload:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/base/Status;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->code:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->message:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->payload:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->copy(Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/base/Status;Ljava/lang/String;Ljava/lang/Object;)Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/base/Status;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/base/Status;Ljava/lang/String;Ljava/lang/Object;)Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/data/network/model/response/base/Status;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;-><init>(Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/base/Status;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->code:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->payload:Ljava/lang/Object;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->payload:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayload()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public final getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->payload:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isError()Z
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->ERROR:Lcom/iMe/storage/data/network/model/response/base/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSuccess()Z
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->OK:Lcom/iMe/storage/data/network/model/response/base/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApiBaseResponse(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
