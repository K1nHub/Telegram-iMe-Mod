.class public Lorg/telegram/tgnet/TLRPC$TL_account_themesNotModified;
.super Lorg/telegram/tgnet/TLRPC$account_Themes;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27979
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$account_Themes;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0xbe149de

    .line 27984
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
