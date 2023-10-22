.class public Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction_old;
.super Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x70511672


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7281
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 7289
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
