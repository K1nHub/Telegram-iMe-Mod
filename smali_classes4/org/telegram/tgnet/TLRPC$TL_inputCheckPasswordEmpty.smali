.class public Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;
.super Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x677f09a8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34314
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 34319
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
