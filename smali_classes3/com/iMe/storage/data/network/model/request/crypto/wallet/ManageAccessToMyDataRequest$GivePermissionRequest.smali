.class public final Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;
.super Ljava/lang/Object;
.source "ManageAccessToMyDataRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GivePermissionRequest"
.end annotation


# instance fields
.field private final access:Ljava/lang/String;

.field private final action:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "access"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->action:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->access:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->action:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->access:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->copy(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->access:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "access"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;

    invoke-direct {v0, p1, p2}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->action:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->access:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->access:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAccess()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->access:Ljava/lang/String;

    return-object v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->action:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->access:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GivePermissionRequest(action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", access="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/ManageAccessToMyDataRequest$GivePermissionRequest;->access:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
