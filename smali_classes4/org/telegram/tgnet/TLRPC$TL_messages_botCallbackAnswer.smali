.class public Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x36585ea4


# instance fields
.field public alert:Z

.field public cache_time:I

.field public flags:I

.field public has_url:Z

.field public message:Ljava/lang/String;

.field public native_ui:Z

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2747
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;
    .locals 1

    .line 2759
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2761
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_messages_botCallbackAnswer"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2766
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;-><init>()V

    .line 2767
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 2772
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2773
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2774
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->has_url:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move v2, v3

    .line 2775
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->native_ui:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 2777
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    .line 2779
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 2780
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    .line 2782
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->cache_time:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 2786
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2787
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->alert:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 2788
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->has_url:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 2789
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->native_ui:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x11

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    .line 2790
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2791
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2792
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 2794
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 2795
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 2797
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_botCallbackAnswer;->cache_time:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
