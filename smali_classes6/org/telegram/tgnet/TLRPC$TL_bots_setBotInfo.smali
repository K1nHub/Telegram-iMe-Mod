.class public Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x10cf3123


# instance fields
.field public about:Ljava/lang/String;

.field public bot:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public description:Ljava/lang/String;

.field public flags:I

.field public lang_code:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11451
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 11462
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 11466
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11467
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11468
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 11469
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 11471
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->lang_code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 11472
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 11473
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 11475
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 11476
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 11478
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 11479
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_bots_setBotInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
