.class public Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
.super Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x73164160


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25687
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 25692
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    .line 25693
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 25697
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 25698
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 25699
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
