.class public final Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;
.super Ljava/lang/Object;
.source "FilterSettingsModel.kt"


# instance fields
.field private fabs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation
.end field

.field private filterId:I

.field private icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;


# direct methods
.method public constructor <init>(ILjava/util/Set;Lcom/iMe/storage/domain/model/filters/FilterIcon;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;",
            "Lcom/iMe/storage/domain/model/filters/FilterIcon;",
            ")V"
        }
    .end annotation

    const-string v0, "fabs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->filterId:I

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->fabs:Ljava/util/Set;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;ILjava/util/Set;Lcom/iMe/storage/domain/model/filters/FilterIcon;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->filterId:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->fabs:Ljava/util/Set;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->copy(ILjava/util/Set;Lcom/iMe/storage/domain/model/filters/FilterIcon;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->filterId:I

    return v0
.end method

.method public final component2()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->fabs:Ljava/util/Set;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/filters/FilterIcon;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    return-object v0
.end method

.method public final copy(ILjava/util/Set;Lcom/iMe/storage/domain/model/filters/FilterIcon;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;",
            "Lcom/iMe/storage/domain/model/filters/FilterIcon;",
            ")",
            "Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;"
        }
    .end annotation

    const-string v0, "fabs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;-><init>(ILjava/util/Set;Lcom/iMe/storage/domain/model/filters/FilterIcon;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    iget v1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->filterId:I

    iget v3, p1, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->filterId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->fabs:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->fabs:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCopy()Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->copy$default(Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;ILjava/util/Set;Lcom/iMe/storage/domain/model/filters/FilterIcon;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    move-result-object v0

    return-object v0
.end method

.method public final getFabs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->fabs:Ljava/util/Set;

    return-object v0
.end method

.method public final getFilterId()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->filterId:I

    return v0
.end method

.method public final getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->filterId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->fabs:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setFabs(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->fabs:Ljava/util/Set;

    return-void
.end method

.method public final setFilterId(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->filterId:I

    return-void
.end method

.method public final setIcon(Lcom/iMe/storage/domain/model/filters/FilterIcon;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterSettingsModel(filterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->filterId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->fabs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->icon:Lcom/iMe/storage/domain/model/filters/FilterIcon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
