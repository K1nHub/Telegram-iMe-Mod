.class public Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5ae7eef3


# instance fields
.field public add_contact:Z

.field public autoarchived:Z

.field public block_contact:Z

.field public flags:I

.field public geo_distance:I

.field public invite_members:Z

.field public need_contacts_exception:Z

.field public report_geo:Z

.field public report_spam:Z

.field public request_chat_broadcast:Z

.field public request_chat_date:I

.field public request_chat_title:Ljava/lang/String;

.field public share_contact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7126
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_peerSettings;
    .locals 1

    .line 7144
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7146
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_peerSettings"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7151
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;-><init>()V

    .line 7152
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 7157
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 7158
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->report_spam:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 7159
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->add_contact:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 7160
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->block_contact:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 7161
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->share_contact:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 7162
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->need_contacts_exception:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 7163
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->report_geo:Z

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 7164
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->autoarchived:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 7165
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->invite_members:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move v2, v3

    .line 7166
    :cond_8
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->request_chat_broadcast:Z

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 7168
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->geo_distance:I

    .line 7170
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 7171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->request_chat_title:Ljava/lang/String;

    .line 7173
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 7174
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->request_chat_date:I

    :cond_b
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 7179
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7180
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->report_spam:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 7181
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->add_contact:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 7182
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->block_contact:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 7183
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->share_contact:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 7184
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->need_contacts_exception:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 7185
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->report_geo:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 7186
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->autoarchived:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x80

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x81

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 7187
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->invite_members:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x100

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x101

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 7188
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->request_chat_broadcast:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x400

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x401

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    .line 7189
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7190
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    .line 7191
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->geo_distance:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7193
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    .line 7194
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->request_chat_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7196
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 7197
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->request_chat_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_b
    return-void
.end method
