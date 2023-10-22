.class public final Lcom/iMe/fork/models/backup/SortingTabStateBackup;
.super Ljava/lang/Object;
.source "SortingTabStateBackup.kt"


# instance fields
.field private final fabDataBackup:Lcom/iMe/fork/models/backup/FabDataBackup;

.field private fabs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation
.end field

.field private isEnabled:Z

.field private position:I

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;IZLcom/iMe/fork/models/backup/FabDataBackup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;IZ",
            "Lcom/iMe/fork/models/backup/FabDataBackup;",
            ")V"
        }
    .end annotation

    const-string p5, "type"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "fabs"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    .line 8
    iput p3, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->position:I

    .line 9
    iput-boolean p4, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;IZLcom/iMe/fork/models/backup/FabDataBackup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/models/backup/SortingTabStateBackup;-><init>(Ljava/lang/String;Ljava/util/Set;IZLcom/iMe/fork/models/backup/FabDataBackup;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/fork/models/backup/SortingTabStateBackup;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->position:I

    iget v3, p1, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->position:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    iget-boolean v3, p1, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lcom/iMe/fork/models/backup/FabDataBackup;

    iget-object p1, p1, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lcom/iMe/fork/models/backup/FabDataBackup;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFabDataBackup()Lcom/iMe/fork/models/backup/FabDataBackup;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lcom/iMe/fork/models/backup/FabDataBackup;

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

    .line 7
    iget-object v0, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->position:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    return v0
.end method

.method public final setPosition(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SortingTabStateBackup(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fabDataBackup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lcom/iMe/fork/models/backup/FabDataBackup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
