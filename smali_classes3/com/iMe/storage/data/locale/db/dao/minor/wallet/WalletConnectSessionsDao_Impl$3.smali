.class Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "WalletConnectSessionsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `WalletConnectSessionDb` SET `tgUserId` = ?,`sessionTopic` = ?,`sessionVersion` = ?,`sessionBridge` = ?,`sessionKey` = ?,`chainId` = ?,`peerId` = ?,`remotePeerId` = ?,`remotePeerMetaName` = ?,`remotePeerMetaUrl` = ?,`remotePeerMetaDescription` = ?,`remotePeerMetaIcons` = ?,`isAutoSign` = ?,`date` = ? WHERE `tgUserId` = ? AND `sessionKey` = ?"

    return-object v0
.end method
