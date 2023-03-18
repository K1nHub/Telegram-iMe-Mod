.class public Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3785ac4


# instance fields
.field public bot:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public flags:I

.field public from_bot_menu:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public platform:Ljava/lang/String;

.field public reply_to_msg_id:I

.field public send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public silent:Z

.field public start_param:Ljava/lang/String;

.field public theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64479
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 64495
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 64499
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64500
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->from_bot_menu:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, -0x11

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 64501
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->silent:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x21

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 64502
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64503
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 64504
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 64505
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 64506
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 64508
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 64509
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->start_param:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 64511
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 64512
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 64514
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 64515
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 64516
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64518
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_6

    .line 64519
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_6
    return-void
.end method
