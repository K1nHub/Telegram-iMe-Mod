.class public final Lcom/iMe/model/twitter/TwitterAuthResult$Success;
.super Lcom/iMe/model/twitter/TwitterAuthResult;
.source "TwitterAuthResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/twitter/TwitterAuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private final expiresIn:J

.field private final refreshToken:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final twitterUserId:J

.field private final twitterUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterUsername"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/iMe/model/twitter/TwitterAuthResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-object p1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->accessToken:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->refreshToken:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->expiresIn:J

    .line 11
    iput-wide p5, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUserId:J

    .line 12
    iput-object p7, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUsername:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->status:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/twitter/TwitterAuthResult$Success;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/model/twitter/TwitterAuthResult$Success;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->accessToken:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->refreshToken:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->expiresIn:J

    goto :goto_2

    :cond_2
    move-wide v3, p3

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUserId:J

    goto :goto_3

    :cond_3
    move-wide v5, p5

    :goto_3
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUsername:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->status:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    move-object p1, v1

    move-object p2, v2

    move-wide p3, v3

    move-wide p5, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->copy(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/iMe/model/twitter/TwitterAuthResult$Success;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->expiresIn:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUserId:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/iMe/model/twitter/TwitterAuthResult$Success;
    .locals 10

    const-string v0, "accessToken"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refreshToken"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterUsername"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;

    move-object v1, v0

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->accessToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->accessToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->refreshToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->refreshToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->expiresIn:J

    iget-wide v5, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->expiresIn:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUserId:J

    iget-wide v5, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUserId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUsername:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUsername:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->status:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->status:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiresIn()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->expiresIn:J

    return-wide v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTwitterUserId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUserId:J

    return-wide v0
.end method

.method public final getTwitterUsername()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->accessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->refreshToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->expiresIn:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUserId:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success(accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->expiresIn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", twitterUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", twitterUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->twitterUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
