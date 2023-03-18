.class public Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x2c042335


# instance fields
.field public background:Z

.field public clear_draft:Z

.field public flags:I

.field public hide_via:Z

.field public id:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public query_id:J

.field public random_id:J

.field public reply_to_msg_id:I

.field public schedule_date:I

.field public send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public silent:Z

.field public top_msg_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54585
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54603
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 54607
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54608
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 54609
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->background:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x41

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 54610
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x80

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x81

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 54611
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->hide_via:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x800

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x801

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 54612
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54613
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 54614
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 54615
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54617
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_5

    .line 54618
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54620
    :cond_5
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 54621
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 54622
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 54623
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    .line 54624
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->schedule_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54626
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_7

    .line 54627
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_7
    return-void
.end method
