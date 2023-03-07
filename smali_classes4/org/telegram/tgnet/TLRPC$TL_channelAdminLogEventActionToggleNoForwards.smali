.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleNoForwards;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x34d5389a


# instance fields
.field public new_value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42216
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 42222
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleNoForwards;->new_value:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 42226
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleNoForwards;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42227
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleNoForwards;->new_value:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    return-void
.end method
