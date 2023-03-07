.class public final Lorg/fork/models/backup/SortingTabStateBackup;
.super Ljava/lang/Object;
.source "SortingTabStateBackup.kt"


# instance fields
.field private final fabDataBackup:Lorg/fork/models/backup/FabDataBackup;

.field private fabs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation
.end field

.field private isEnabled:Z

.field private position:I

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;IZLorg/fork/models/backup/FabDataBackup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;IZ",
            "Lorg/fork/models/backup/FabDataBackup;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fabs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    .line 8
    iput p3, p0, Lorg/fork/models/backup/SortingTabStateBackup;->position:I

    .line 9
    iput-boolean p4, p0, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    .line 10
    iput-object p5, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lorg/fork/models/backup/FabDataBackup;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;IZLorg/fork/models/backup/FabDataBackup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    invoke-direct/range {v0 .. v5}, Lorg/fork/models/backup/SortingTabStateBackup;-><init>(Ljava/lang/String;Ljava/util/Set;IZLorg/fork/models/backup/FabDataBackup;)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fork/models/backup/SortingTabStateBackup;Ljava/lang/String;Ljava/util/Set;IZLorg/fork/models/backup/FabDataBackup;ILjava/lang/Object;)Lorg/fork/models/backup/SortingTabStateBackup;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lorg/fork/models/backup/SortingTabStateBackup;->position:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lorg/fork/models/backup/FabDataBackup;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lorg/fork/models/backup/SortingTabStateBackup;->copy(Ljava/lang/String;Ljava/util/Set;IZLorg/fork/models/backup/FabDataBackup;)Lorg/fork/models/backup/SortingTabStateBackup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->position:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    return v0
.end method

.method public final component5()Lorg/fork/models/backup/FabDataBackup;
    .locals 1

    iget-object v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lorg/fork/models/backup/FabDataBackup;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Set;IZLorg/fork/models/backup/FabDataBackup;)Lorg/fork/models/backup/SortingTabStateBackup;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;IZ",
            "Lorg/fork/models/backup/FabDataBackup;",
            ")",
            "Lorg/fork/models/backup/SortingTabStateBackup;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fabs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fork/models/backup/SortingTabStateBackup;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/fork/models/backup/SortingTabStateBackup;-><init>(Ljava/lang/String;Ljava/util/Set;IZLorg/fork/models/backup/FabDataBackup;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fork/models/backup/SortingTabStateBackup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fork/models/backup/SortingTabStateBackup;

    iget-object v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    iget-object v3, p1, Lorg/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    iget-object v3, p1, Lorg/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->position:I

    iget v3, p1, Lorg/fork/models/backup/SortingTabStateBackup;->position:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    iget-boolean v3, p1, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lorg/fork/models/backup/FabDataBackup;

    iget-object p1, p1, Lorg/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lorg/fork/models/backup/FabDataBackup;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getFabDataBackup()Lorg/fork/models/backup/FabDataBackup;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lorg/fork/models/backup/FabDataBackup;

    return-object v0
.end method

.method public final getFabs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 8
    iget v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->position:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lorg/fork/models/backup/FabDataBackup;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/fork/models/backup/FabDataBackup;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    return-void
.end method

.method public final setFabs(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 8
    iput p1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SortingTabStateBackup(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fabDataBackup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/models/backup/SortingTabStateBackup;->fabDataBackup:Lorg/fork/models/backup/FabDataBackup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
