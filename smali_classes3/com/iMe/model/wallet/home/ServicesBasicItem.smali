.class public final Lcom/iMe/model/wallet/home/ServicesBasicItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "ServicesBasicItem.kt"


# instance fields
.field private final category:Lcom/iMe/model/wallet/home/ServicesCategory;

.field private final icon:I

.field private final subtitleResId:I

.field private final titleResId:I


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/home/ServicesCategory;III)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->category:Lcom/iMe/model/wallet/home/ServicesCategory;

    .line 9
    iput p2, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->icon:I

    .line 10
    iput p3, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->titleResId:I

    .line 11
    iput p4, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->subtitleResId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/ServicesBasicItem;Lcom/iMe/model/wallet/home/ServicesCategory;IIIILjava/lang/Object;)Lcom/iMe/model/wallet/home/ServicesBasicItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->category:Lcom/iMe/model/wallet/home/ServicesCategory;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->icon:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->titleResId:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->subtitleResId:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/home/ServicesBasicItem;->copy(Lcom/iMe/model/wallet/home/ServicesCategory;III)Lcom/iMe/model/wallet/home/ServicesBasicItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/model/wallet/home/ServicesCategory;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->category:Lcom/iMe/model/wallet/home/ServicesCategory;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->icon:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->titleResId:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->subtitleResId:I

    return v0
.end method

.method public final copy(Lcom/iMe/model/wallet/home/ServicesCategory;III)Lcom/iMe/model/wallet/home/ServicesBasicItem;
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/home/ServicesBasicItem;-><init>(Lcom/iMe/model/wallet/home/ServicesCategory;III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->category:Lcom/iMe/model/wallet/home/ServicesCategory;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;->category:Lcom/iMe/model/wallet/home/ServicesCategory;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->icon:I

    iget v3, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;->icon:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->titleResId:I

    iget v3, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;->titleResId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->subtitleResId:I

    iget p1, p1, Lcom/iMe/model/wallet/home/ServicesBasicItem;->subtitleResId:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCategory()Lcom/iMe/model/wallet/home/ServicesCategory;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->category:Lcom/iMe/model/wallet/home/ServicesCategory;

    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->icon:I

    return v0
.end method

.method public final getSubtitleResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->subtitleResId:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->titleResId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->category:Lcom/iMe/model/wallet/home/ServicesCategory;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->icon:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->titleResId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->subtitleResId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServicesBasicItem(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->category:Lcom/iMe/model/wallet/home/ServicesCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", titleResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->titleResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/home/ServicesBasicItem;->subtitleResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
