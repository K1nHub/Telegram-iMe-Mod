.class public final Lcom/smedialink/model/common/GlobalStateItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "GlobalStateItem.kt"


# instance fields
.field private final itemType:I

.field private final state:Lcom/smedialink/model/state/GlobalState;


# direct methods
.method public constructor <init>(Lcom/smedialink/model/state/GlobalState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    iput-object p1, p0, Lcom/smedialink/model/common/GlobalStateItem;->state:Lcom/smedialink/model/state/GlobalState;

    .line 8
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->GLOBAL_STATE:I

    iput p1, p0, Lcom/smedialink/model/common/GlobalStateItem;->itemType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/common/GlobalStateItem;Lcom/smedialink/model/state/GlobalState;ILjava/lang/Object;)Lcom/smedialink/model/common/GlobalStateItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/smedialink/model/common/GlobalStateItem;->state:Lcom/smedialink/model/state/GlobalState;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/model/common/GlobalStateItem;->copy(Lcom/smedialink/model/state/GlobalState;)Lcom/smedialink/model/common/GlobalStateItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/model/state/GlobalState;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/common/GlobalStateItem;->state:Lcom/smedialink/model/state/GlobalState;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/model/state/GlobalState;)Lcom/smedialink/model/common/GlobalStateItem;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-direct {v0, p1}, Lcom/smedialink/model/common/GlobalStateItem;-><init>(Lcom/smedialink/model/state/GlobalState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/common/GlobalStateItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/common/GlobalStateItem;

    iget-object v1, p0, Lcom/smedialink/model/common/GlobalStateItem;->state:Lcom/smedialink/model/state/GlobalState;

    iget-object p1, p1, Lcom/smedialink/model/common/GlobalStateItem;->state:Lcom/smedialink/model/state/GlobalState;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getItemType()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/model/common/GlobalStateItem;->itemType:I

    return v0
.end method

.method public final getState()Lcom/smedialink/model/state/GlobalState;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/model/common/GlobalStateItem;->state:Lcom/smedialink/model/state/GlobalState;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/common/GlobalStateItem;->state:Lcom/smedialink/model/state/GlobalState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlobalStateItem(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/common/GlobalStateItem;->state:Lcom/smedialink/model/state/GlobalState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
