.class public final Lcom/iMe/feature/socialMedias/SocialDomain;
.super Ljava/lang/Object;
.source "SocialDomain.kt"


# instance fields
.field private hasUpdateAccess:Z

.field private final socialNetworks:Ljava/util/List;
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
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/iMe/feature/socialMedias/SocialDomain;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;)V"
        }
    .end annotation

    const-string v0, "socialNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->hasUpdateAccess:Z

    .line 8
    iput-object p2, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->socialNetworks:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/feature/socialMedias/SocialDomain;-><init>(ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/feature/socialMedias/SocialDomain;ZLjava/util/List;ILjava/lang/Object;)Lcom/iMe/feature/socialMedias/SocialDomain;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->hasUpdateAccess:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->socialNetworks:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/SocialDomain;->copy(ZLjava/util/List;)Lcom/iMe/feature/socialMedias/SocialDomain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(ZLjava/util/List;)Lcom/iMe/feature/socialMedias/SocialDomain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;)",
            "Lcom/iMe/feature/socialMedias/SocialDomain;"
        }
    .end annotation

    const-string v0, "socialNetworks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/feature/socialMedias/SocialDomain;

    invoke-direct {v0, p1, p2}, Lcom/iMe/feature/socialMedias/SocialDomain;-><init>(ZLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/feature/socialMedias/SocialDomain;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/feature/socialMedias/SocialDomain;

    iget-boolean v1, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->hasUpdateAccess:Z

    iget-boolean v3, p1, Lcom/iMe/feature/socialMedias/SocialDomain;->hasUpdateAccess:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->socialNetworks:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/feature/socialMedias/SocialDomain;->socialNetworks:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getHasUpdateAccess()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->hasUpdateAccess:Z

    return v0
.end method

.method public final getSocialNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->socialNetworks:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->hasUpdateAccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->socialNetworks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialDomain(hasUpdateAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->hasUpdateAccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", socialNetworks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialDomain;->socialNetworks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
