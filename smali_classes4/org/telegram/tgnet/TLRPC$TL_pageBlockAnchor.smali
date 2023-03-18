.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x31f2c850


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28798
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 28804
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;->name:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 28808
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28809
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
