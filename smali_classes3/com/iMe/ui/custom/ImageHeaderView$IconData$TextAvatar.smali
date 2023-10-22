.class public final Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;
.super Lcom/iMe/ui/custom/ImageHeaderView$IconData;
.source "ImageHeaderView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/custom/ImageHeaderView$IconData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextAvatar"
.end annotation


# instance fields
.field private final firstName:Ljava/lang/String;

.field private final id:J

.field private final lastName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "firstName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Lcom/iMe/ui/custom/ImageHeaderView$IconData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 104
    iput-wide p1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->id:J

    .line 105
    iput-object p3, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->firstName:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->lastName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;

    iget-wide v3, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->id:J

    iget-wide v5, p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->firstName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->firstName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->lastName:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->lastName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->id:J

    return-wide v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->id:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->firstName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->lastName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextAvatar(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", firstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
