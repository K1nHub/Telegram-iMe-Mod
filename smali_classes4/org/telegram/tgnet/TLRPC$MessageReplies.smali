.class public abstract Lorg/telegram/tgnet/TLRPC$MessageReplies;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public channel_id:J

.field public comments:Z

.field public flags:I

.field public max_id:I

.field public read_max_id:I

.field public recent_repliers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Peer;",
            ">;"
        }
    .end annotation
.end field

.field public replies:I

.field public replies_pts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11575
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 11581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplies;->recent_repliers:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageReplies;
    .locals 1

    const v0, -0x7c29f03e

    if-eq p1, v0, :cond_1

    const v0, 0x4128faac

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 11590
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageReplies_layer131;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageReplies_layer131;-><init>()V

    goto :goto_0

    .line 11593
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageReplies;-><init>()V

    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 11597
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in MessageReplies"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 11600
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_4
    return-object v0
.end method
