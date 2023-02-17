.class public final Lcom/smedialink/model/wallet/notification/NotificationInformation;
.super Ljava/lang/Object;
.source "NotificationInformation.kt"


# instance fields
.field private final isPushTokenRegistered:Z

.field private final pushAllowanceToken:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushAllowanceToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->userId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->pushAllowanceToken:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->isPushTokenRegistered:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/notification/NotificationInformation;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/smedialink/model/wallet/notification/NotificationInformation;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->userId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->pushAllowanceToken:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->isPushTokenRegistered:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/model/wallet/notification/NotificationInformation;->copy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/smedialink/model/wallet/notification/NotificationInformation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->pushAllowanceToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->isPushTokenRegistered:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Z)Lcom/smedialink/model/wallet/notification/NotificationInformation;
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushAllowanceToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/notification/NotificationInformation;

    invoke-direct {v0, p1, p2, p3}, Lcom/smedialink/model/wallet/notification/NotificationInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/notification/NotificationInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/notification/NotificationInformation;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/NotificationInformation;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->pushAllowanceToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/NotificationInformation;->pushAllowanceToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->isPushTokenRegistered:Z

    iget-boolean p1, p1, Lcom/smedialink/model/wallet/notification/NotificationInformation;->isPushTokenRegistered:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPushAllowanceToken()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->pushAllowanceToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->userId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->pushAllowanceToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->isPushTokenRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPushTokenRegistered()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->isPushTokenRegistered:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationInformation(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pushAllowanceToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->pushAllowanceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPushTokenRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/model/wallet/notification/NotificationInformation;->isPushTokenRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
