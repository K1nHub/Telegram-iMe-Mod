.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x63bbebc


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29836
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 29841
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 29845
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29846
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
