.class public Lorg/telegram/tgnet/TLRPC$TL_botAppNotModified;
.super Lorg/telegram/tgnet/TLRPC$BotApp;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x5da674b7


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65286
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotApp;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 65294
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botAppNotModified;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
