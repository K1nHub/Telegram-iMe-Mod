.class public Lorg/telegram/tgnet/TLRPC$TL_botMenuButton;
.super Lorg/telegram/tgnet/TLRPC$BotMenuButton;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x384a831a


# instance fields
.field public text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64751
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotMenuButton;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 64758
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botMenuButton;->text:Ljava/lang/String;

    .line 64759
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_botMenuButton;->url:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 64763
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botMenuButton;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 64764
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botMenuButton;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 64765
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_botMenuButton;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
