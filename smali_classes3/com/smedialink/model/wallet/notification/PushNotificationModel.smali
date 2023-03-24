.class public abstract Lcom/smedialink/model/wallet/notification/PushNotificationModel;
.super Ljava/lang/Object;
.source "PushNotificationModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$Approve;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$BinancePayRequestCreated;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$BinancePayRequestStatusUpdated;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$Cancel;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$Companion;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$Simplex;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingFinished;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalStarted;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;,
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$Unsupported;
    }
.end annotation


# static fields
.field public static final ACTION_OPEN_WALLET:Ljava/lang/String; = "com.iMe.push.action.openwallet"

.field public static final BASE_PUSH_ACTION:Ljava/lang/String; = "com.iMe.push.action"

.field public static final Companion:Lcom/smedialink/model/wallet/notification/PushNotificationModel$Companion;


# instance fields
.field private final transient type:Ljava/lang/String;

.field private final transient userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->Companion:Lcom/smedialink/model/wallet/notification/PushNotificationModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->userId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.iMe.push.action.openwallet"

    return-object v0
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public final varargs getString$TMessagesProj_release(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "formatArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "formatStringInternal(id, *formatArgs)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;
    .locals 2

    .line 21
    sget-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->Companion:Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->userId:Ljava/lang/String;

    return-object v0
.end method
