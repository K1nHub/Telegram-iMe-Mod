.class public Lorg/telegram/tgnet/TLRPC$TL_textEmpty;
.super Lorg/telegram/tgnet/TLRPC$RichText;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x23c27db1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2472
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$RichText;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 2477
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
