.class public final Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;
.super Lcom/iMe/model/common/NoChildNode;
.source "HeaderItemWithNetworkSwitcher.kt"


# instance fields
.field private isNetworkSwitcherVisible:Z

.field private networkType:Lcom/iMe/storage/domain/model/crypto/Network;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->title:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->networkType:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 9
    iput-boolean p3, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;ZILjava/lang/Object;)Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->title:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->networkType:Lcom/iMe/storage/domain/model/crypto/Network;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->copy(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Z)Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->networkType:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Z)Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->networkType:Lcom/iMe/storage/domain/model/crypto/Network;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->networkType:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible:Z

    iget-boolean p1, p1, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getNetworkType()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->networkType:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->networkType:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isNetworkSwitcherVisible()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible:Z

    return v0
.end method

.method public final setNetworkSwitcherVisible(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible:Z

    return-void
.end method

.method public final setNetworkType(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->networkType:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderItemWithNetworkSwitcher(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->networkType:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNetworkSwitcherVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;->isNetworkSwitcherVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
