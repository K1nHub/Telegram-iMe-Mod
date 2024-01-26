.class public abstract Lcom/iMe/storage/domain/model/notification/Notification;
.super Ljava/lang/Object;
.source "Notification.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/notification/Notification$Approve;,
        Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestCreated;,
        Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;,
        Lcom/iMe/storage/domain/model/notification/Notification$Cancel;,
        Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;,
        Lcom/iMe/storage/domain/model/notification/Notification$Donation;,
        Lcom/iMe/storage/domain/model/notification/Notification$Simplex;,
        Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;,
        Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;,
        Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;,
        Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;,
        Lcom/iMe/storage/domain/model/notification/Notification$Unsupported;
    }
.end annotation


# instance fields
.field private final date:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private isRead:Z

.field private final networkId:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/domain/model/notification/NotificationType;

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/iMe/storage/domain/model/notification/Notification;->id:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/iMe/storage/domain/model/notification/Notification;->isRead:Z

    .line 11
    iput-object p3, p0, Lcom/iMe/storage/domain/model/notification/Notification;->type:Lcom/iMe/storage/domain/model/notification/NotificationType;

    .line 12
    iput-object p4, p0, Lcom/iMe/storage/domain/model/notification/Notification;->date:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/iMe/storage/domain/model/notification/Notification;->userId:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/iMe/storage/domain/model/notification/Notification;->networkId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/iMe/storage/domain/model/notification/Notification;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification;->networkId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/iMe/storage/domain/model/notification/NotificationType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification;->type:Lcom/iMe/storage/domain/model/notification/NotificationType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/notification/Notification;->isRead:Z

    return v0
.end method

.method public setRead(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/iMe/storage/domain/model/notification/Notification;->isRead:Z

    return-void
.end method
