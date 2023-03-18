.class public Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;
.super Lorg/telegram/tgnet/TLRPC$AttachMenuBot;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3755d32e


# instance fields
.field public bot_id:J

.field public flags:I

.field public has_settings:Z

.field public icons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;",
            ">;"
        }
    .end annotation
.end field

.field public inactive:Z

.field public peer_types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$AttachMenuPeerType;",
            ">;"
        }
    .end annotation
.end field

.field public request_write_access:Z

.field public short_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63988
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$AttachMenuBot;-><init>()V

    .line 63997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->peer_types:Ljava/util/ArrayList;

    .line 63998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 8

    .line 64001
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 64002
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 64003
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->has_settings:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 64004
    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->request_write_access:Z

    .line 64005
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    .line 64006
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    .line 64007
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const-string/jumbo v1, "wrong Vector magic, got %x"

    const v4, 0x1cb5c415

    if-eq v0, v4, :cond_4

    if-nez p2, :cond_3

    return-void

    .line 64010
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64014
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_6

    .line 64016
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$AttachMenuPeerType;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$AttachMenuPeerType;

    move-result-object v6

    if-nez v6, :cond_5

    return-void

    .line 64020
    :cond_5
    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->peer_types:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 64022
    :cond_6
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    if-eq v0, v4, :cond_8

    if-nez p2, :cond_7

    return-void

    .line 64025
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64029
    :cond_8
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_a

    .line 64031
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    .line 64035
    :cond_9
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 64040
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64041
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->inactive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    .line 64042
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->has_settings:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    .line 64043
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->request_write_access:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->flags:I

    .line 64044
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64045
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 64046
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->short_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    const v0, 0x1cb5c415

    .line 64047
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64048
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->peer_types:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 64049
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    .line 64051
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->peer_types:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$AttachMenuPeerType;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 64053
    :cond_3
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64054
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64055
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_4
    if-ge v2, v0, :cond_4

    .line 64057
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->icons:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;

    invoke-virtual {v1, p1}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBotIcon;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method
