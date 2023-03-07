.class public Lorg/telegram/tgnet/TLRPC$TL_botInfo;
.super Lorg/telegram/tgnet/TLRPC$BotInfo;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x70cff4a9


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10780
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 10785
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 10787
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:J

    .line 10789
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10790
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description:Ljava/lang/String;

    .line 10792
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 10793
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 10795
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 10796
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 10798
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 10799
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v2, 0x1cb5c415

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    if-nez p2, :cond_4

    return-void

    .line 10802
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    const-string v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10806
    :cond_5
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_7

    .line 10808
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    move-result-object v1

    if-nez v1, :cond_6

    return-void

    .line 10812
    :cond_6
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10815
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 10816
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$BotMenuButton;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotMenuButton;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->menu_button:Lorg/telegram/tgnet/TLRPC$BotMenuButton;

    :cond_8
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 10821
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botInfo;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10822
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10823
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10824
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 10826
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 10827
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 10829
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    .line 10830
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10832
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 10833
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 10835
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    const v0, 0x1cb5c415

    .line 10836
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10837
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10838
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 10840
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10843
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 10844
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInfo;->menu_button:Lorg/telegram/tgnet/TLRPC$BotMenuButton;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_5
    return-void
.end method
