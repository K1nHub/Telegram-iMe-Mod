.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x5d7ceba5


# instance fields
.field public add_admins:Z

.field public ban_users:Z

.field public change_info:Z

.field public delete_messages:Z

.field public edit_messages:Z

.field public flags:I

.field public invite_users:Z

.field public manage_call:Z

.field public pin_messages:Z

.field public post_messages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42643
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;
    .locals 1

    .line 42658
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42660
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_channelAdminRights_layer92"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42665
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;-><init>()V

    .line 42666
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 42671
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 42672
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->change_info:Z

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 42673
    :goto_1
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->post_messages:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 42674
    :goto_2
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->edit_messages:Z

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    .line 42675
    :goto_3
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->delete_messages:Z

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_4

    :cond_4
    const/4 p2, 0x0

    .line 42676
    :goto_4
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->ban_users:Z

    and-int/lit8 p2, p1, 0x20

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_5

    :cond_5
    const/4 p2, 0x0

    .line 42677
    :goto_5
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->invite_users:Z

    and-int/lit16 p2, p1, 0x80

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_6

    :cond_6
    const/4 p2, 0x0

    .line 42678
    :goto_6
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->pin_messages:Z

    and-int/lit16 p2, p1, 0x200

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    goto :goto_7

    :cond_7
    const/4 p2, 0x0

    .line 42679
    :goto_7
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->add_admins:Z

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 42680
    :cond_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->manage_call:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 42684
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42685
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->change_info:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42686
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->post_messages:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42687
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->edit_messages:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42688
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->delete_messages:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42689
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->ban_users:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42690
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->invite_users:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42691
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->pin_messages:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x81

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42692
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->add_admins:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x200

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x201

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42693
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->manage_call:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x400

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x401

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights_layer92;->flags:I

    .line 42694
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
