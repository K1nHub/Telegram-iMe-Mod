.class public Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified_layer110;
.super Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x7a7b6b8d


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20716
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 20721
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified_layer110;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
