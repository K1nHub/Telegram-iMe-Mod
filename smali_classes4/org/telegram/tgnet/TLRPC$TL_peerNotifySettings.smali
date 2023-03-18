.class public Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;
.super Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x57c4fbda


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9151
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 9155
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9157
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->show_previews:Z

    .line 9159
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9160
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    .line 9162
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9163
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 9165
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9166
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->ios_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 9168
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9169
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 9171
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 9172
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->other_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 9177
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9178
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9179
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9180
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->show_previews:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 9182
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9183
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 9185
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9186
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9188
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9189
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->ios_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9191
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9192
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9194
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 9195
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->other_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_5
    return-void
.end method
