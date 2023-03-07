.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x55188a2e


# instance fields
.field public new_value:Ljava/lang/String;

.field public prev_value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42022
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 42029
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;->prev_value:Ljava/lang/String;

    .line 42030
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;->new_value:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 42034
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42035
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;->prev_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 42036
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeAbout;->new_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
