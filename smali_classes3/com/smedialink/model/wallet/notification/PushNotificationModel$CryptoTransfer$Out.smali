.class public final Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;
.super Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;
.source "PushNotificationModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Out"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out$WhenMappings;
    }
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final cryptoCode:Ljava/lang/String;

.field private final fromWalletAddress:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final toWalletAddress:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromWalletAddress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toWalletAddress"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->userId:Ljava/lang/String;

    .line 230
    iput-object p2, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->type:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->status:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    .line 233
    iput-object p5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->fromWalletAddress:Ljava/lang/String;

    .line 234
    iput-object p6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    .line 235
    iput-object p7, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getUserId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getType()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->status:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->fromWalletAddress:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->fromWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;
    .locals 9

    const-string v0, "userId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoCode"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromWalletAddress"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toWalletAddress"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->fromWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->fromWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getCryptoCode()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromWalletAddress()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->fromWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 9

    .line 238
    sget-object v0, Lcom/smedialink/storage/data/network/model/response/base/Status;->Companion:Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v0

    sget-object v1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    const-string v0, ""

    goto/16 :goto_1

    .line 249
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->push_notification_wallet_crypto_transfer_out_failed_description:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 250
    new-instance v5, Ljava/math/BigDecimal;

    iget-object v6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v7, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v7

    invoke-static {v5, v7}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 251
    iget-object v5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v4}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString$TMessagesProj_release(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 248
    invoke-virtual {p0, v0, v1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString$TMessagesProj_release(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 240
    :cond_1
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v5

    .line 242
    sget v6, Lorg/telegram/messenger/R$string;->push_notification_wallet_crypto_transfer_out_success_description:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 243
    new-instance v7, Ljava/math/BigDecimal;

    iget-object v8, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v0

    invoke-static {v7, v0}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    .line 244
    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v4}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString$TMessagesProj_release(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v1, v3

    .line 245
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 241
    invoke-virtual {p0, v6, v1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString$TMessagesProj_release(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getToWalletAddress()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->fromWalletAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cryptoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->fromWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->toWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
