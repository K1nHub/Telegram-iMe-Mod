.class public Lorg/telegram/tgnet/TLRPC$TL_dialogFilterDefault;
.super Lorg/telegram/tgnet/TLRPC$DialogFilter;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x363293ae


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21315
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DialogFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 21320
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterDefault;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
