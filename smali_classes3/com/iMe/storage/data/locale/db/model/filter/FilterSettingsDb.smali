.class public final Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;
.super Ljava/lang/Object;
.source "FilterSettingsDb.kt"


# instance fields
.field private final fabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filterId:I

.field private final icon:Ljava/lang/String;

.field private final isHidden:Z

.field private final userId:J


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZJ)V"
        }
    .end annotation

    const-string v0, "fabs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->filterId:I

    .line 8
    iput-object p2, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->fabs:Ljava/util/List;

    .line 9
    iput-object p3, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->icon:Ljava/lang/String;

    .line 10
    iput-boolean p4, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->isHidden:Z

    .line 11
    iput-wide p5, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->userId:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->filterId:I

    iget v3, p1, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->filterId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->fabs:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->fabs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->icon:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->icon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->isHidden:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->isHidden:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->userId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->userId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->fabs:Ljava/util/List;

    return-object v0
.end method

.method public final getFilterId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->filterId:I

    return v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->filterId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->fabs:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->icon:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->isHidden:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->userId:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->isHidden:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterSettingsDb(filterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->filterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->fabs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->isHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
