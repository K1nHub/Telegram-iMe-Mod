.class public Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings_layer139;
.super Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9758
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 9762
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9764
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->show_previews:Z

    .line 9766
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9767
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    .line 9769
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9770
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 9772
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9773
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->sound:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x50af62e0

    .line 9778
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9779
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9780
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9781
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->show_previews:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 9783
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9784
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 9786
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9787
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9789
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9790
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->sound:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
