.class public Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonIllegalDrugs;
.super Lorg/telegram/tgnet/TLRPC$ReportReason;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27989
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ReportReason;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0xa8eb2be

    .line 27994
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
