.class public final Lcom/smedialink/model/wallet/home/SelectableHeaderItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "SelectableHeaderItem.kt"


# instance fields
.field private final icon:I

.field private final id:I

.field private final onSelected:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final titleResId:I


# direct methods
.method public constructor <init>(IIILjava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelected"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 10
    iput p1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->id:I

    .line 11
    iput p2, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->icon:I

    .line 12
    iput p3, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->titleResId:I

    .line 13
    iput-object p4, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->options:Ljava/util/List;

    .line 14
    iput-object p5, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->onSelected:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/home/SelectableHeaderItem;IIILjava/util/List;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/smedialink/model/wallet/home/SelectableHeaderItem;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->id:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->icon:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->titleResId:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->options:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->onSelected:Lkotlin/jvm/functions/Function2;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->copy(IIILjava/util/List;Lkotlin/jvm/functions/Function2;)Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->icon:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->titleResId:I

    return v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->options:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->onSelected:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final copy(IIILjava/util/List;Lkotlin/jvm/functions/Function2;)Lcom/smedialink/model/wallet/home/SelectableHeaderItem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/smedialink/model/wallet/home/SelectableHeaderItem;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSelected"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;-><init>(IIILjava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 21
    :cond_0
    const-class v1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.smedialink.model.wallet.home.SelectableHeaderItem"

    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;

    .line 23
    iget v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->id:I

    iget v3, p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->id:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->icon:I

    iget v3, p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->icon:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->titleResId:I

    iget v3, p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->titleResId:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->options:Ljava/util/List;

    iget-object p1, p1, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->options:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->icon:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->id:I

    return v0
.end method

.method public final getOnSelected()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->onSelected:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->options:Ljava/util/List;

    return-object v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->titleResId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    iget v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->titleResId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->options:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectableHeaderItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", titleResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->titleResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/SelectableHeaderItem;->onSelected:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
