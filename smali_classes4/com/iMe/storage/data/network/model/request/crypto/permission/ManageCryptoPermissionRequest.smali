.class public final Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;
.super Ljava/lang/Object;
.source "ManageCryptoPermissionRequest.kt"


# instance fields
.field private final general:Z

.field private final targetUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "targetUserIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->targetUserIds:Ljava/util/List;

    .line 5
    iput-boolean p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->general:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;Ljava/util/List;ZILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->targetUserIds:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->general:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->copy(Ljava/util/List;Z)Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->targetUserIds:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->general:Z

    return v0
.end method

.method public final copy(Ljava/util/List;Z)Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;"
        }
    .end annotation

    const-string v0, "targetUserIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->targetUserIds:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->targetUserIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->general:Z

    iget-boolean p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->general:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGeneral()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->general:Z

    return v0
.end method

.method public final getTargetUserIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->targetUserIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->targetUserIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->general:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManageCryptoPermissionRequest(targetUserIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->targetUserIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", general="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/permission/ManageCryptoPermissionRequest;->general:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
