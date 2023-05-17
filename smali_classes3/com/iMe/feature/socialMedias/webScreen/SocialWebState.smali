.class public final Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;
.super Ljava/lang/Object;
.source "SocialWebState.kt"


# instance fields
.field private final isLoading:Z

.field private final socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

.field private final titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;-><init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;Z)V
    .locals 1

    const-string v0, "titleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->titleText:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 8
    iput-boolean p3, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->isLoading:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    :goto_0
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lcom/iMe/feature/socialMedias/SocialNetwork;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7ff

    const/4 v15, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Lcom/iMe/feature/socialMedias/SocialNetwork;-><init>(Lcom/iMe/feature/socialMedias/SocialType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p2

    :goto_1
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v3, p0

    goto :goto_2

    :cond_2
    move-object/from16 v3, p0

    move/from16 v2, p3

    .line 5
    :goto_2
    invoke-direct {v3, v0, v1, v2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;-><init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;ZILjava/lang/Object;)Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->titleText:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->isLoading:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->copy(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;Z)Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;Z)Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;
    .locals 1

    const-string v0, "titleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;-><init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->titleText:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->titleText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    iget-object v3, p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->isLoading:Z

    iget-boolean p1, p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->isLoading:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    return-object v0
.end method

.method public final getTitleText()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->titleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->isLoading:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->isLoading:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialWebState(titleText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", socialNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->isLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
