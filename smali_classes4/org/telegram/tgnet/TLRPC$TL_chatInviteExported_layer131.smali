.class public Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x6e24fc9d


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48301
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 48306
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 48307
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    move v2, v3

    .line 48308
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->permanent:Z

    .line 48309
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    .line 48310
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    .line 48311
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    .line 48312
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 48313
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->start_date:I

    .line 48315
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 48316
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    .line 48318
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 48319
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    .line 48321
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 48322
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 48327
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported_layer131;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48328
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    .line 48329
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->permanent:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x21

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    .line 48330
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48331
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 48332
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48333
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48334
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 48335
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->start_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48337
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 48338
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48340
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 48341
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 48343
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 48344
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_5
    return-void
.end method
