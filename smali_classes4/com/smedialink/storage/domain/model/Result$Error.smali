.class public final Lcom/smedialink/storage/domain/model/Result$Error;
.super Lcom/smedialink/storage/domain/model/Result;
.source "Result.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/smedialink/storage/domain/model/Result<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final error:Lcom/smedialink/storage/data/network/model/error/ErrorModel;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/error/ErrorModel;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 281
    invoke-direct {p0, p2, v0}, Lcom/smedialink/storage/domain/model/Result;-><init>(Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 279
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/Result$Error;->error:Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    .line 280
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/Result$Error;->data:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 278
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/smedialink/storage/domain/model/Result$Error;-><init>(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/Result$Error;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/domain/model/Result$Error;->error:Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/Result$Error;->getData()Ljava/lang/Object;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/domain/model/Result$Error;->copy(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/data/network/model/error/ErrorModel;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/Result$Error;->error:Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/Result$Error;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result$Error;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/error/ErrorModel;",
            "TT;)",
            "Lcom/smedialink/storage/domain/model/Result$Error<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/domain/model/Result$Error;-><init>(Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/Result$Error;->error:Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/Result$Error;->error:Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/Result$Error;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/Result$Error;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/Result$Error;->error:Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/Result$Error;->error:Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/Result$Error;->getData()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/Result$Error;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error(error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/Result$Error;->error:Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/Result$Error;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
