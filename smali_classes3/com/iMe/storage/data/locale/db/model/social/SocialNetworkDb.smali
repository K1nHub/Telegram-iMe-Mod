.class public final Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;
.super Ljava/lang/Object;
.source "SocialNetworkDb.kt"


# instance fields
.field private final beforeConnectMessage:Ljava/lang/String;

.field private final iconUrl:Ljava/lang/String;

.field private final isActive:Z

.field private final profileId:J

.field private final social:Ljava/lang/String;

.field private final socialElementAvatarUrl:Ljava/lang/String;

.field private final socialElementId:Ljava/lang/String;

.field private final socialPosition:I

.field private final socialUserName:Ljava/lang/String;

.field private final socialWebUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "social"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialElementId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialElementAvatarUrl"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialUserName"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialWebUrl"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beforeConnectMessage"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->profileId:J

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->social:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->iconUrl:Ljava/lang/String;

    .line 10
    iput p5, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialPosition:I

    .line 11
    iput-object p6, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementId:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementAvatarUrl:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialUserName:Ljava/lang/String;

    .line 14
    iput-object p9, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialWebUrl:Ljava/lang/String;

    .line 15
    iput-boolean p10, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->isActive:Z

    .line 16
    iput-object p11, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->beforeConnectMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;

    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->profileId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->profileId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->social:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->social:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialPosition:I

    iget v3, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialPosition:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementAvatarUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementAvatarUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialUserName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialUserName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialWebUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialWebUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->isActive:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->isActive:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->beforeConnectMessage:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->beforeConnectMessage:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getBeforeConnectMessage()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->beforeConnectMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->profileId:J

    return-wide v0
.end method

.method public final getSocial()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->social:Ljava/lang/String;

    return-object v0
.end method

.method public final getSocialElementAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSocialElementId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSocialPosition()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialPosition:I

    return v0
.end method

.method public final getSocialUserName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialUserName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSocialWebUrl()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialWebUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->profileId:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->social:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialPosition:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementAvatarUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialUserName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialWebUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->isActive:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->beforeConnectMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isActive()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->isActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialNetworkDb(profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->profileId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", social="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->social:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", socialPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", socialElementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", socialElementAvatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialElementAvatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", socialUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", socialWebUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->socialWebUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", beforeConnectMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->beforeConnectMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
