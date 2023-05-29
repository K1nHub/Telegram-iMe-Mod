.class public final Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
.super Ljava/lang/Object;
.source "AccountInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/AccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field private final addressValue:Ljava/lang/String;

.field private final hasAccess:Z

.field private final isAddressSet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "addressValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    .line 12
    iput-boolean p2, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    .line 13
    iput-boolean p3, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hasAccess:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hasAccess:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->copy(Ljava/lang/String;ZZ)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hasAccess:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;ZZ)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 1

    const-string v0, "addressValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    iget-boolean v3, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hasAccess:Z

    iget-boolean p1, p1, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hasAccess:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAddressValue()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasAccess()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hasAccess:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hasAccess:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isAddressSet()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address(addressValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->addressValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAddressSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->isAddressSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;->hasAccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
