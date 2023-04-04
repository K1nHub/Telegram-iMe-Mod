.class public final Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;
.super Ljava/lang/Object;
.source "AccountLevelMetadata.kt"


# instance fields
.field private final daysDuration:I

.field private final level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;I)V
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 7
    iput p2, p0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->daysDuration:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 6
    sget-object p1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->ZERO:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->daysDuration:I

    iget p1, p1, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->daysDuration:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLevel()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->daysDuration:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountLevelMetadata(level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->level:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", daysDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/prefs/model/AccountLevelMetadata;->daysDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
