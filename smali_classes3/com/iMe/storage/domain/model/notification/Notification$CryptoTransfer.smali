.class public abstract Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;
.super Lcom/iMe/storage/domain/model/notification/Notification;
.source "Notification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/notification/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CryptoTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;,
        Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;
    }
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final date:Ljava/lang/String;

.field private final fromAddress:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private isRead:Z

.field private final networkId:Ljava/lang/String;

.field private final toAddress:Ljava/lang/String;

.field private final tokenCode:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/domain/model/notification/NotificationType;

.field private final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v8, p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 166
    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/domain/model/notification/Notification;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    .line 156
    iput-object v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->id:Ljava/lang/String;

    move v0, p2

    .line 157
    iput-boolean v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->isRead:Z

    move-object v0, p3

    .line 158
    iput-object v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->type:Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-object v0, p4

    .line 159
    iput-object v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->date:Ljava/lang/String;

    move-object v0, p5

    .line 160
    iput-object v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->userId:Ljava/lang/String;

    move-object v0, p6

    .line 161
    iput-object v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->networkId:Ljava/lang/String;

    move-object/from16 v0, p7

    .line 162
    iput-object v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->tokenCode:Ljava/lang/String;

    move-object/from16 v0, p8

    .line 163
    iput-object v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->fromAddress:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 164
    iput-object v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->toAddress:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 165
    iput-object v0, v8, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->amount:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->fromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->networkId:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->toAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenCode()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->tokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/iMe/storage/domain/model/notification/NotificationType;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->type:Lcom/iMe/storage/domain/model/notification/NotificationType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->isRead:Z

    return v0
.end method

.method public setRead(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;->isRead:Z

    return-void
.end method
