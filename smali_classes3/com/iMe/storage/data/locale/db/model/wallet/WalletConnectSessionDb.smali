.class public final Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;
.super Ljava/lang/Object;
.source "WalletConnectSessionDb.kt"


# instance fields
.field private final chainId:I

.field private final date:Ljava/util/Date;

.field private final isAutoSign:Z

.field private final peerId:Ljava/lang/String;

.field private final remotePeerId:Ljava/lang/String;

.field private final remotePeerMetaDescription:Ljava/lang/String;

.field private final remotePeerMetaIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final remotePeerMetaName:Ljava/lang/String;

.field private final remotePeerMetaUrl:Ljava/lang/String;

.field private final sessionBridge:Ljava/lang/String;

.field private final sessionKey:Ljava/lang/String;

.field private final sessionTopic:Ljava/lang/String;

.field private final sessionVersion:Ljava/lang/String;

.field private final tgUserId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p13

    move-object/from16 v10, p15

    const-string v11, "sessionTopic"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "sessionVersion"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "sessionBridge"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "sessionKey"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "peerId"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "remotePeerId"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "remotePeerMetaName"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "remotePeerMetaUrl"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "remotePeerMetaIcons"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "date"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v11, p1

    .line 9
    iput-wide v11, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->tgUserId:J

    .line 10
    iput-object v1, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionTopic:Ljava/lang/String;

    .line 11
    iput-object v2, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionVersion:Ljava/lang/String;

    .line 12
    iput-object v3, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionBridge:Ljava/lang/String;

    .line 13
    iput-object v4, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionKey:Ljava/lang/String;

    move/from16 v1, p7

    .line 14
    iput v1, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->chainId:I

    .line 15
    iput-object v5, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->peerId:Ljava/lang/String;

    .line 16
    iput-object v6, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerId:Ljava/lang/String;

    .line 17
    iput-object v7, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaName:Ljava/lang/String;

    .line 18
    iput-object v8, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaUrl:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 19
    iput-object v1, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaDescription:Ljava/lang/String;

    .line 20
    iput-object v9, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaIcons:Ljava/util/List;

    move/from16 v1, p14

    .line 21
    iput-boolean v1, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->isAutoSign:Z

    .line 22
    iput-object v10, v0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;

    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->tgUserId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->tgUserId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionTopic:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionTopic:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionBridge:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionBridge:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->chainId:I

    iget v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->chainId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->peerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->peerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaIcons:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaIcons:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->isAutoSign:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->isAutoSign:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->date:Ljava/util/Date;

    iget-object p1, p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->date:Ljava/util/Date;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final getChainId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->chainId:I

    return v0
.end method

.method public final getDate()Ljava/util/Date;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->date:Ljava/util/Date;

    return-object v0
.end method

.method public final getPeerId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemotePeerId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemotePeerMetaDescription()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemotePeerMetaIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaIcons:Ljava/util/List;

    return-object v0
.end method

.method public final getRemotePeerMetaName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaName:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemotePeerMetaUrl()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionBridge()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionBridge:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionKey()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionTopic()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionTopic:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionVersion()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getTgUserId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->tgUserId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->tgUserId:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionTopic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionBridge:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->chainId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->peerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaDescription:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaIcons:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->isAutoSign:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAutoSign()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->isAutoSign:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WalletConnectSessionDb(tgUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->tgUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionTopic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionBridge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionBridge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->sessionKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->chainId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->peerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remotePeerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remotePeerMetaName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remotePeerMetaUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remotePeerMetaDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remotePeerMetaIcons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->remotePeerMetaIcons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->isAutoSign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
