.class public abstract Lorg/telegram/tgnet/TLRPC$BotInlineResult;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public content:Lorg/telegram/tgnet/TLRPC$WebDocument;

.field public description:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public flags:I

.field public id:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public query_id:J

.field public send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

.field public thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9355
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .locals 1

    const v0, 0x11965f3a

    if-eq p1, v0, :cond_1

    const v0, 0x17db940b

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 9377
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineMediaResult;-><init>()V

    goto :goto_0

    .line 9374
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_botInlineResult;-><init>()V

    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 9381
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in BotInlineResult"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 9384
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_4
    return-object v0
.end method
