.class public Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x73a5c4c4


# instance fields
.field public app:Lorg/telegram/tgnet/TLRPC$InputBotApp;

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public platform:Ljava/lang/String;

.field public start_param:Ljava/lang/String;

.field public theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public write_allowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64572
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 64584
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_appWebViewResultUrl;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_appWebViewResultUrl;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 64588
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64589
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->write_allowed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    .line 64590
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64591
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 64592
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->app:Lorg/telegram/tgnet/TLRPC$InputBotApp;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 64593
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 64594
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->start_param:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 64596
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 64597
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 64599
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestAppWebView;->platform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
