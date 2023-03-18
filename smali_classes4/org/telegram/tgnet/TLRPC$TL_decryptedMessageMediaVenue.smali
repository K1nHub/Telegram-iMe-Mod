.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x75f20a91


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40910
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 40915
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    .line 40916
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    .line 40917
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    .line 40918
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    .line 40919
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    .line 40920
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 40924
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 40925
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 40926
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    .line 40927
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 40928
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 40929
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 40930
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
