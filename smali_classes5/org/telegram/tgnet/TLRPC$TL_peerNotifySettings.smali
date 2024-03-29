.class public Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;
.super Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9630
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 9634
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9636
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->show_previews:Z

    .line 9638
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9639
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    .line 9641
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9642
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    .line 9644
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9645
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->ios_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 9647
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9648
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 9650
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 9651
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->other_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 9653
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 9654
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_muted:Z

    .line 9656
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 9657
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_hide_sender:Z

    .line 9659
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 9660
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_ios_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 9662
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 9663
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    .line 9665
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 9666
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$NotificationSound;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$NotificationSound;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_other_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    :cond_a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x669dd3f4

    .line 9671
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9672
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9673
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9674
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->show_previews:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 9676
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9677
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 9679
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 9680
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 9682
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 9683
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->ios_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9685
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9686
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9688
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 9689
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->other_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9691
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 9692
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 9694
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 9695
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_hide_sender:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 9697
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 9698
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_ios_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9700
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 9701
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_android_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 9703
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 9704
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->stories_other_sound:Lorg/telegram/tgnet/TLRPC$NotificationSound;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_a
    return-void
.end method
