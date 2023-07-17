.class public abstract Lcom/iMe/storage/domain/model/notification/Notification$Donation;
.super Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;
.source "Notification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/notification/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Donation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;,
        Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;
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
    .locals 13

    move-object v12, p0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 208
    invoke-direct/range {v0 .. v11}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    .line 198
    iput-object v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->id:Ljava/lang/String;

    move v0, p2

    .line 199
    iput-boolean v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->isRead:Z

    move-object/from16 v0, p3

    .line 200
    iput-object v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->type:Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-object/from16 v0, p4

    .line 201
    iput-object v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->date:Ljava/lang/String;

    move-object/from16 v0, p5

    .line 202
    iput-object v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->userId:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 203
    iput-object v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->networkId:Ljava/lang/String;

    move-object/from16 v0, p7

    .line 204
    iput-object v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->tokenCode:Ljava/lang/String;

    move-object/from16 v0, p8

    .line 205
    iput-object v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->fromAddress:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 206
    iput-object v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->toAddress:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 207
    iput-object v0, v12, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->amount:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/iMe/storage/domain/model/notification/Notification$Donation;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->fromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->networkId:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->toAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenCode()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->tokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/iMe/storage/domain/model/notification/NotificationType;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->type:Lcom/iMe/storage/domain/model/notification/NotificationType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->isRead:Z

    return v0
.end method

.method public setRead(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation;->isRead:Z

    return-void
.end method
