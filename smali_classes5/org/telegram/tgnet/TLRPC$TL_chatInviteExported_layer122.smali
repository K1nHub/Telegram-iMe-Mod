.class public Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported_layer122;
.super Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51366
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 51371
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x3d1fa44

    .line 51375
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51376
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
