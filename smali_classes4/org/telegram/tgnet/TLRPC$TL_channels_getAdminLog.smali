.class public Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x33ddf480


# instance fields
.field public admins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputUser;",
            ">;"
        }
    .end annotation
.end field

.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public events_filter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

.field public flags:I

.field public limit:I

.field public max_id:J

.field public min_id:J

.field public q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57575
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 57582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->admins:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57588
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 57592
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57593
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57594
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 57595
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 57596
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 57597
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->events_filter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 57599
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const v0, 0x1cb5c415

    .line 57600
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57601
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->admins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57602
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 57604
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->admins:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57607
    :cond_1
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->max_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 57608
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->min_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 57609
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
