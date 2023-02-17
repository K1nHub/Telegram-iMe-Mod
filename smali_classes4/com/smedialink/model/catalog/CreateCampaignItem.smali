.class public final Lcom/smedialink/model/catalog/CreateCampaignItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "CreateCampaignItem.kt"


# instance fields
.field private final icon:I

.field private final titleResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 8
    iput p1, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->icon:I

    .line 9
    iput p2, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->titleResId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/catalog/CreateCampaignItem;IIILjava/lang/Object;)Lcom/smedialink/model/catalog/CreateCampaignItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->icon:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->titleResId:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/model/catalog/CreateCampaignItem;->copy(II)Lcom/smedialink/model/catalog/CreateCampaignItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->icon:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->titleResId:I

    return v0
.end method

.method public final copy(II)Lcom/smedialink/model/catalog/CreateCampaignItem;
    .locals 1

    new-instance v0, Lcom/smedialink/model/catalog/CreateCampaignItem;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/model/catalog/CreateCampaignItem;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/catalog/CreateCampaignItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/catalog/CreateCampaignItem;

    iget v1, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->icon:I

    iget v3, p1, Lcom/smedialink/model/catalog/CreateCampaignItem;->icon:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->titleResId:I

    iget p1, p1, Lcom/smedialink/model/catalog/CreateCampaignItem;->titleResId:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->icon:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->titleResId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->icon:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->titleResId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateCampaignItem(icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->icon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", titleResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/model/catalog/CreateCampaignItem;->titleResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
