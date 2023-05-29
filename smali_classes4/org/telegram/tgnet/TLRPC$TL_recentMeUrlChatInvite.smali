.class public Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;
.super Lorg/telegram/tgnet/TLRPC$RecentMeUrl;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x14b6f7e3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24579
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 24584
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->url:Ljava/lang/String;

    .line 24585
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatInvite;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 24589
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_recentMeUrlChatInvite;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24590
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24591
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$RecentMeUrl;->chat_invite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
