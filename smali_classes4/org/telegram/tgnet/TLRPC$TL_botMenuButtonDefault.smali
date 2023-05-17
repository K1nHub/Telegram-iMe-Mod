.class public Lorg/telegram/tgnet/TLRPC$TL_botMenuButtonDefault;
.super Lorg/telegram/tgnet/TLRPC$BotMenuButton;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x7533a588


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$BotMenuButton;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_botMenuButtonDefault;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
