.class public Lorg/telegram/tgnet/TLRPC$TL_inputDocumentEmpty;
.super Lorg/telegram/tgnet/TLRPC$InputDocument;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x72f0eaae


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27366
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputDocument;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 27371
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
