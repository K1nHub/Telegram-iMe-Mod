.class public final Lcom/iMe/model/wallet/notification/NotificationItem;
.super Ljava/lang/Object;
.source "NotificationItem.kt"

# interfaces
.implements Lcom/iMe/model/wallet/transaction/ClickableItem;


# instance fields
.field private category:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private final notification:Lcom/iMe/storage/domain/model/notification/Notification;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/notification/Notification;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    .line 14
    iput-object p2, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->category:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/notification/NotificationItem;Lcom/iMe/storage/domain/model/notification/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/model/wallet/notification/NotificationItem;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->category:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/model/wallet/notification/NotificationItem;->copy(Lcom/iMe/storage/domain/model/notification/Notification;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/wallet/notification/NotificationItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/notification/Notification;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/notification/Notification;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/wallet/notification/NotificationItem;
    .locals 1

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/notification/NotificationItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/model/wallet/notification/NotificationItem;-><init>(Lcom/iMe/storage/domain/model/notification/Notification;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/notification/NotificationItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/notification/NotificationItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    iget-object v3, p1, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->category:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/model/wallet/notification/NotificationItem;->category:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedText()Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    .line 30
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_0
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;->getToAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_2
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;->getToAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getLinkedTextType()Lcom/iMe/model/wallet/transaction/LinkedTextType;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/NotificationExtKt;->isWithAddressType(Lcom/iMe/storage/domain/model/notification/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iMe/model/wallet/transaction/LinkedTextType;->ADDRESS:Lcom/iMe/model/wallet/transaction/LinkedTextType;

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/iMe/model/wallet/transaction/LinkedTextType;->NOTING:Lcom/iMe/model/wallet/transaction/LinkedTextType;

    :goto_0
    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    return-object p1
.end method

.method public getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public final getNotification()Lcom/iMe/storage/domain/model/notification/Notification;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    .line 40
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_0
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;->getToAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_1
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_2
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;->getToAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    .line 49
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->getTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_0
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->getTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;->getTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_2
    instance-of v1, v0, Lcom/iMe/storage/domain/model/notification/Notification$Approve;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Approve;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Approve;->getTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_3
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isUnsupported()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    instance-of v0, v0, Lcom/iMe/storage/domain/model/notification/Notification$Unsupported;

    return v0
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->category:Ljava/lang/String;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationItem(notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->notification:Lcom/iMe/storage/domain/model/notification/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/NotificationItem;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
