.class public Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;
.super Ljava/lang/Object;
.source "HevcDecoderConfigurationRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation


# instance fields
.field public array_completeness:Z

.field public nalUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public nal_unit_type:I

.field public reserved:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 511
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 513
    :cond_1
    check-cast p1, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;

    .line 515
    iget-boolean v2, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    iget-boolean v3, p1, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 516
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    iget v3, p1, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    if-eq v2, v3, :cond_3

    return v1

    .line 517
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->reserved:Z

    iget-boolean v3, p1, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->reserved:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 518
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 519
    iget-object p1, p1, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 520
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 521
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 522
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v3, :cond_6

    if-nez v4, :cond_7

    goto :goto_0

    .line 524
    :cond_6
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_7
    return v1

    .line 527
    :cond_8
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    move v0, v1

    :goto_1
    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 532
    iget-boolean v0, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 533
    iget-boolean v1, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->reserved:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 534
    iget v1, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 535
    iget-object v1, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array{nal_unit_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->nal_unit_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->reserved:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", array_completeness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->array_completeness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", num_nals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord$Array;->nalUnits:Ljava/util/List;

    .line 545
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
