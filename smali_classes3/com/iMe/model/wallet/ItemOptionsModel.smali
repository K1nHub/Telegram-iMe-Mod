.class public final Lcom/iMe/model/wallet/ItemOptionsModel;
.super Ljava/lang/Object;
.source "ItemOptionsModel.kt"


# instance fields
.field private final iconResId:I

.field private final id:I

.field private final textResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->id:I

    .line 11
    iput p2, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->iconResId:I

    .line 12
    iput p3, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->textResId:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/ItemOptionsModel;IIIILjava/lang/Object;)Lcom/iMe/model/wallet/ItemOptionsModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->id:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->iconResId:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->textResId:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/wallet/ItemOptionsModel;->copy(III)Lcom/iMe/model/wallet/ItemOptionsModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->id:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->iconResId:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->textResId:I

    return v0
.end method

.method public final copy(III)Lcom/iMe/model/wallet/ItemOptionsModel;
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/ItemOptionsModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/wallet/ItemOptionsModel;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/ItemOptionsModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/ItemOptionsModel;

    iget v1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->id:I

    iget v3, p1, Lcom/iMe/model/wallet/ItemOptionsModel;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->iconResId:I

    iget v3, p1, Lcom/iMe/model/wallet/ItemOptionsModel;->iconResId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->textResId:I

    iget p1, p1, Lcom/iMe/model/wallet/ItemOptionsModel;->textResId:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getIconResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->iconResId:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->id:I

    return v0
.end method

.method public final getTextResId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->textResId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->iconResId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->textResId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemOptionsModel(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->iconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/ItemOptionsModel;->textResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
