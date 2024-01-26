.class public final Lcom/iMe/feature/profile/ProfileUiState;
.super Ljava/lang/Object;
.source "ProfileUiState.kt"


# instance fields
.field private final allNotMegaGroupMembers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final contentState:Lcom/iMe/feature/socialMedias/ContentState;

.field private final currentProfile:Lcom/iMe/feature/profile/ProfileData;

.field private final hasEditAccess:Z

.field private final networks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/iMe/feature/profile/ProfileUiState;-><init>(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/profile/ProfileData;",
            "Lcom/iMe/feature/socialMedias/ContentState;",
            "Z",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "currentProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allNotMegaGroupMembers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/feature/profile/ProfileUiState;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    .line 9
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileUiState;->contentState:Lcom/iMe/feature/socialMedias/ContentState;

    .line 10
    iput-boolean p3, p0, Lcom/iMe/feature/profile/ProfileUiState;->hasEditAccess:Z

    .line 11
    iput-object p4, p0, Lcom/iMe/feature/profile/ProfileUiState;->networks:Ljava/util/List;

    .line 12
    iput-object p5, p0, Lcom/iMe/feature/profile/ProfileUiState;->allNotMegaGroupMembers:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 8
    new-instance p1, Lcom/iMe/feature/profile/ProfileData;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/iMe/feature/profile/ProfileData;-><init>(JJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 9
    sget-object p2, Lcom/iMe/feature/socialMedias/ContentState;->EMPTY:Lcom/iMe/feature/socialMedias/ContentState;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    const/4 p3, 0x0

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 11
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 12
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    .line 7
    invoke-direct/range {p2 .. p7}, Lcom/iMe/feature/profile/ProfileUiState;-><init>(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/feature/profile/ProfileUiState;Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/iMe/feature/profile/ProfileUiState;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/iMe/feature/profile/ProfileUiState;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/iMe/feature/profile/ProfileUiState;->contentState:Lcom/iMe/feature/socialMedias/ContentState;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/iMe/feature/profile/ProfileUiState;->hasEditAccess:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/feature/profile/ProfileUiState;->networks:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/feature/profile/ProfileUiState;->allNotMegaGroupMembers:Ljava/util/ArrayList;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/feature/profile/ProfileUiState;->copy(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;)Lcom/iMe/feature/profile/ProfileUiState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;)Lcom/iMe/feature/profile/ProfileUiState;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/profile/ProfileData;",
            "Lcom/iMe/feature/socialMedias/ContentState;",
            "Z",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;)",
            "Lcom/iMe/feature/profile/ProfileUiState;"
        }
    .end annotation

    const-string v0, "currentProfile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allNotMegaGroupMembers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/feature/profile/ProfileUiState;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/feature/profile/ProfileUiState;-><init>(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/feature/profile/ProfileUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/feature/profile/ProfileUiState;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    iget-object v3, p1, Lcom/iMe/feature/profile/ProfileUiState;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->contentState:Lcom/iMe/feature/socialMedias/ContentState;

    iget-object v3, p1, Lcom/iMe/feature/profile/ProfileUiState;->contentState:Lcom/iMe/feature/socialMedias/ContentState;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->hasEditAccess:Z

    iget-boolean v3, p1, Lcom/iMe/feature/profile/ProfileUiState;->hasEditAccess:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->networks:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/feature/profile/ProfileUiState;->networks:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->allNotMegaGroupMembers:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/iMe/feature/profile/ProfileUiState;->allNotMegaGroupMembers:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAllNotMegaGroupMembers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileUiState;->allNotMegaGroupMembers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getContentState()Lcom/iMe/feature/socialMedias/ContentState;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileUiState;->contentState:Lcom/iMe/feature/socialMedias/ContentState;

    return-object v0
.end method

.method public final getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileUiState;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    return-object v0
.end method

.method public final getHasEditAccess()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/feature/profile/ProfileUiState;->hasEditAccess:Z

    return v0
.end method

.method public final getNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileUiState;->networks:Ljava/util/List;

    return-object v0
.end method

.method public final hasNoParticipants()Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileUiState;->allNotMegaGroupMembers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileUiState;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfileData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->contentState:Lcom/iMe/feature/socialMedias/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->hasEditAccess:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->networks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->allNotMegaGroupMembers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfileUiState(currentProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->currentProfile:Lcom/iMe/feature/profile/ProfileData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->contentState:Lcom/iMe/feature/socialMedias/ContentState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasEditAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->hasEditAccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", networks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->networks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allNotMegaGroupMembers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfileUiState;->allNotMegaGroupMembers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
