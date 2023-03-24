.class public Lorg/telegram/tgnet/TLRPC$TL_contactLinkUnknown;
.super Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x5f4f9247


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3844
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ContactLink_layer101;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 3849
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_contactLinkUnknown;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
