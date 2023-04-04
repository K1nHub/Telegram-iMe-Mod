.class public final Lcom/iMe/fork/models/SortingTabState;
.super Ljava/lang/Object;
.source "SortingTabState.kt"


# instance fields
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

.field private final type:Lcom/iMe/fork/enums/SortingFilter;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/enums/SortingFilter;Ljava/util/Set;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/fork/enums/SortingFilter;",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;IZ)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fabs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/iMe/fork/models/SortingTabState;->type:Lcom/iMe/fork/enums/SortingFilter;

    .line 8
    iput-object p2, p0, Lcom/iMe/fork/models/SortingTabState;->fabs:Ljava/util/Set;

    .line 9
    iput p3, p0, Lcom/iMe/fork/models/SortingTabState;->position:I

    .line 10
    iput-boolean p4, p0, Lcom/iMe/fork/models/SortingTabState;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/fork/models/SortingTabState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/fork/models/SortingTabState;

    iget-object v1, p0, Lcom/iMe/fork/models/SortingTabState;->type:Lcom/iMe/fork/enums/SortingFilter;

    iget-object v3, p1, Lcom/iMe/fork/models/SortingTabState;->type:Lcom/iMe/fork/enums/SortingFilter;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/fork/models/SortingTabState;->fabs:Ljava/util/Set;

    iget-object v3, p1, Lcom/iMe/fork/models/SortingTabState;->fabs:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/iMe/fork/models/SortingTabState;->position:I

    iget v3, p1, Lcom/iMe/fork/models/SortingTabState;->position:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/iMe/fork/models/SortingTabState;->isEnabled:Z

    iget-boolean p1, p1, Lcom/iMe/fork/models/SortingTabState;->isEnabled:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
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

    .line 8
    iget-object v0, p0, Lcom/iMe/fork/models/SortingTabState;->fabs:Ljava/util/Set;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/fork/models/SortingTabState;->position:I

    return v0
.end method

.method public final getType()Lcom/iMe/fork/enums/SortingFilter;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/fork/models/SortingTabState;->type:Lcom/iMe/fork/enums/SortingFilter;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/models/SortingTabState;->type:Lcom/iMe/fork/enums/SortingFilter;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/fork/models/SortingTabState;->fabs:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/fork/models/SortingTabState;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/fork/models/SortingTabState;->isEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/fork/models/SortingTabState;->isEnabled:Z

    return v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/iMe/fork/models/SortingTabState;->isEnabled:Z

    return-void
.end method

.method public final setFabs(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/iMe/fork/models/SortingTabState;->fabs:Ljava/util/Set;

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/iMe/fork/models/SortingTabState;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SortingTabState(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/SortingTabState;->type:Lcom/iMe/fork/enums/SortingFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/fork/models/SortingTabState;->fabs:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/fork/models/SortingTabState;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/fork/models/SortingTabState;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
