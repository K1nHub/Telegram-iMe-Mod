.class public final Lcom/iMe/model/wallet/swap/DexProtocolItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "DexProtocolItem.kt"


# instance fields
.field private final info:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

.field private final isEnabled:Z


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Z)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->info:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 8
    iput-boolean p2, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/swap/DexProtocolItem;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;ZILjava/lang/Object;)Lcom/iMe/model/wallet/swap/DexProtocolItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->info:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/wallet/swap/DexProtocolItem;->copy(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Z)Lcom/iMe/model/wallet/swap/DexProtocolItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->info:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled:Z

    return v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Z)Lcom/iMe/model/wallet/swap/DexProtocolItem;
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/swap/DexProtocolItem;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/wallet/swap/DexProtocolItem;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/swap/DexProtocolItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/swap/DexProtocolItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->info:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    iget-object v3, p1, Lcom/iMe/model/wallet/swap/DexProtocolItem;->info:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled:Z

    iget-boolean p1, p1, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getInfo()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->info:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->info:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DexProtocolItem(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->info:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/swap/DexProtocolItem;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
