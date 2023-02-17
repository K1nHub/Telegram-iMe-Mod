.class public final Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;
.super Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;
.source "PushNotificationModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "In"
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final cryptoCode:Ljava/lang/String;

.field private final fromWalletAddress:Ljava/lang/String;

.field private final toWalletAddress:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromWalletAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toWalletAddress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->userId:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->type:Ljava/lang/String;

    .line 214
    iput-object p3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->fromWalletAddress:Ljava/lang/String;

    .line 216
    iput-object p5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->toWalletAddress:Ljava/lang/String;

    .line 217
    iput-object p6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->amount:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getUserId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getType()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->fromWalletAddress:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->toWalletAddress:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->amount:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->fromWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->toWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;
    .locals 8

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromWalletAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toWalletAddress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->fromWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->fromWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->toWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->toWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->amount:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->amount:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getCryptoCode()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromWalletAddress()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->fromWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    .line 221
    sget v0, Lorg/telegram/messenger/R$string;->push_notification_wallet_crypto_transfer_in_description:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 222
    iget-object v2, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->amount:Ljava/lang/String;

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v4, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v4

    invoke-static {v3, v4}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 223
    iget-object v3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->fromWalletAddress:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getToWalletAddress()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->toWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->fromWalletAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->toWalletAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cryptoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->fromWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->toWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
