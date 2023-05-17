.class public final Lcom/iMe/model/twitter/SocialAuthResult$Verification;
.super Lcom/iMe/model/twitter/SocialAuthResult;
.source "SocialAuthResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/twitter/SocialAuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Verification"
.end annotation


# instance fields
.field private final socialId:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/iMe/model/twitter/SocialAuthResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->socialId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/twitter/SocialAuthResult$Verification;JILjava/lang/Object;)Lcom/iMe/model/twitter/SocialAuthResult$Verification;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->socialId:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->copy(J)Lcom/iMe/model/twitter/SocialAuthResult$Verification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->socialId:J

    return-wide v0
.end method

.method public final copy(J)Lcom/iMe/model/twitter/SocialAuthResult$Verification;
    .locals 1

    new-instance v0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/twitter/SocialAuthResult$Verification;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/twitter/SocialAuthResult$Verification;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/twitter/SocialAuthResult$Verification;

    iget-wide v3, p0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->socialId:J

    iget-wide v5, p1, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->socialId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSocialId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->socialId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->socialId:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification(socialId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->socialId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
