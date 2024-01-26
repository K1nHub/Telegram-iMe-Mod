.class public Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChat;
.super Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26081
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 26086
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->url:Ljava/lang/String;

    .line 26087
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x4d258e2e

    .line 26091
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26092
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26093
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
