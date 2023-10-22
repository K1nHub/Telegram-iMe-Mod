.class public Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3534951e


# instance fields
.field public flags:I

.field public mute_until:I

.field public show_previews:Z

.field public silent:Z

.field public sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

.field public stories_hide_sender:Z

.field public stories_muted:Z

.field public stories_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19044
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 19070
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 19072
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    .line 19074
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 19075
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    .line 19077
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 19078
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    .line 19080
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 19081
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 19083
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 19084
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_muted:Z

    .line 19086
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 19087
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_hide_sender:Z

    .line 19089
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 19090
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    :cond_6
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 19095
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19096
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19097
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 19098
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->show_previews:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 19100
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 19101
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->silent:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 19103
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 19104
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->mute_until:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19106
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 19107
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19109
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 19110
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 19112
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    .line 19113
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_hide_sender:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 19115
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    .line 19116
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerNotifySettings;->stories_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_6
    return-void
.end method
