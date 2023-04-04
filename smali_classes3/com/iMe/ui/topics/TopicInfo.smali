.class public final Lcom/iMe/ui/topics/TopicInfo;
.super Ljava/lang/Object;
.source "TopicInfo.kt"


# instance fields
.field private final colorResId:I

.field private final iconResId:I

.field private final titleResId:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/iMe/ui/topics/TopicInfo;->colorResId:I

    .line 9
    iput p2, p0, Lcom/iMe/ui/topics/TopicInfo;->titleResId:I

    .line 10
    iput p3, p0, Lcom/iMe/ui/topics/TopicInfo;->iconResId:I

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/ui/topics/TopicInfo;->colorResId:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/iMe/ui/topics/TopicInfo;->titleResId:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/iMe/ui/topics/TopicInfo;->iconResId:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/ui/topics/TopicInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/ui/topics/TopicInfo;

    iget v1, p0, Lcom/iMe/ui/topics/TopicInfo;->colorResId:I

    iget v3, p1, Lcom/iMe/ui/topics/TopicInfo;->colorResId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/ui/topics/TopicInfo;->titleResId:I

    iget v3, p1, Lcom/iMe/ui/topics/TopicInfo;->titleResId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/ui/topics/TopicInfo;->iconResId:I

    iget p1, p1, Lcom/iMe/ui/topics/TopicInfo;->iconResId:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getColorResId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/ui/topics/TopicInfo;->colorResId:I

    return v0
.end method

.method public final getIconResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/ui/topics/TopicInfo;->iconResId:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/ui/topics/TopicInfo;->titleResId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/ui/topics/TopicInfo;->colorResId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/ui/topics/TopicInfo;->titleResId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/ui/topics/TopicInfo;->iconResId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TopicInfo(colorResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/ui/topics/TopicInfo;->colorResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", titleResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/ui/topics/TopicInfo;->titleResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/ui/topics/TopicInfo;->iconResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
