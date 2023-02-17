.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;
.super Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x7a1bdcff


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21259
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 21264
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
