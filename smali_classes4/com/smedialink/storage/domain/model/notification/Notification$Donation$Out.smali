.class public final Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;
.super Lcom/smedialink/storage/domain/model/notification/Notification$Donation;
.source "Notification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/notification/Notification$Donation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Out"
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final date:Ljava/lang/String;

.field private final fromAddress:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private isRead:Z

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final status:Lcom/smedialink/storage/data/network/model/response/base/Status;

.field private final toAddress:Ljava/lang/String;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final type:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/model/response/base/Status;Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move-object/from16 v11, p5

    move-object/from16 v10, p6

    move-object/from16 v9, p7

    move-object/from16 v8, p8

    move-object/from16 v7, p9

    move-object/from16 v6, p10

    move-object/from16 v5, p11

    const-string v0, "status"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCode"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromAddress"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toAddress"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, v16

    .line 237
    invoke-direct/range {v0 .. v11}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 226
    iput-object v13, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    .line 227
    iput-object v14, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->id:Ljava/lang/String;

    move/from16 v0, p3

    .line 228
    iput-boolean v0, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->isRead:Z

    .line 229
    iput-object v15, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->type:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-object/from16 v0, p5

    .line 230
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->date:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 231
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->userId:Ljava/lang/String;

    move-object/from16 v0, p7

    .line 232
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-object/from16 v0, p8

    .line 233
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v0, p9

    .line 234
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->fromAddress:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 235
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->toAddress:Ljava/lang/String;

    move-object/from16 v0, p11

    .line 236
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->amount:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;Lcom/smedialink/storage/data/network/model/response/base/Status;Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    move-object v1, p0

    iget-object v2, v1, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->isRead()Z

    move-result v4

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getDate()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getFromAddress()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getToAddress()Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getAmount()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_a
    move-object/from16 v0, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v0

    invoke-virtual/range {p0 .. p11}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->copy(Lcom/smedialink/storage/data/network/model/response/base/Status;Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getAmount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->isRead()Z

    move-result v0

    return v0
.end method

.method public final component4()Lcom/smedialink/storage/domain/model/notification/NotificationType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public final component8()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/data/network/model/response/base/Status;Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;
    .locals 13

    const-string v0, "status"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCode"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromAddress"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toAddress"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;

    move-object v1, v0

    move/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;-><init>(Lcom/smedialink/storage/data/network/model/response/base/Status;Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->isRead()Z

    move-result v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->isRead()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getFromAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getFromAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getToAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getToAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getAmount()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->fromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->toAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->type:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->isRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getFromAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getToAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->isRead:Z

    return v0
.end method

.method public setRead(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->isRead:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->isRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getFromAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getToAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
