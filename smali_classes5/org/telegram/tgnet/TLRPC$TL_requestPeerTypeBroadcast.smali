.class public Lorg/telegram/tgnet/TLRPC$TL_requestPeerTypeBroadcast;
.super Lorg/telegram/tgnet/TLRPC$RequestPeerType;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64086
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$RequestPeerType;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 64090
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 64091
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->creator:Ljava/lang/Boolean;

    .line 64092
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 64093
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->has_username:Ljava/lang/Boolean;

    .line 64095
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 64096
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->user_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 64098
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 64099
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->bot_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x339bef6c

    .line 64104
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64105
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->creator:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    .line 64106
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->user_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    .line 64107
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->bot_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    .line 64108
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->has_username:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->flags:I

    .line 64109
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64110
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->has_username:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 64111
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 64113
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->user_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v0, :cond_5

    .line 64114
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 64116
    :cond_5
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RequestPeerType;->bot_admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v0, :cond_6

    .line 64117
    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_6
    return-void
.end method
