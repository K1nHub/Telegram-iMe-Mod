.class public final Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;
.super Ljava/lang/Object;
.source "FirebaseFunctionsLibResponse.kt"


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
.field private final result:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;->result:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;->result:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;->copy(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;->result:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "TT;>;)",
            "Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;-><init>(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;->result:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;->result:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getResult()Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "TT;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;->result:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;->result:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirebaseFunctionsLibResponse(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/base/FirebaseFunctionsLibResponse;->result:Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
