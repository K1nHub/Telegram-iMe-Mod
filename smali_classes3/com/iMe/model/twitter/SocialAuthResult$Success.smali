.class public final Lcom/iMe/model/twitter/SocialAuthResult$Success;
.super Lcom/iMe/model/twitter/SocialAuthResult;
.source "SocialAuthResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/twitter/SocialAuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation


# instance fields
.field private final socialId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitterUserId"
    .end annotation
.end field

.field private final status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/twitter/SocialAuthResult$Success;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/iMe/model/twitter/SocialAuthResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    iput-object p1, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->status:Ljava/lang/String;

    .line 8
    iput-wide p2, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->socialId:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, -0x1

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/model/twitter/SocialAuthResult$Success;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/twitter/SocialAuthResult$Success;Ljava/lang/String;JILjava/lang/Object;)Lcom/iMe/model/twitter/SocialAuthResult$Success;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->status:Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->socialId:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/twitter/SocialAuthResult$Success;->copy(Ljava/lang/String;J)Lcom/iMe/model/twitter/SocialAuthResult$Success;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->socialId:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;J)Lcom/iMe/model/twitter/SocialAuthResult$Success;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/twitter/SocialAuthResult$Success;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/twitter/SocialAuthResult$Success;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/twitter/SocialAuthResult$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/twitter/SocialAuthResult$Success;

    iget-object v1, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/twitter/SocialAuthResult$Success;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->socialId:J

    iget-wide v5, p1, Lcom/iMe/model/twitter/SocialAuthResult$Success;->socialId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSocialId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->socialId:J

    return-wide v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->socialId:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Success(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", socialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/twitter/SocialAuthResult$Success;->socialId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
