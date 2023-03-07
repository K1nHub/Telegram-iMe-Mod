.class public Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;
.super Lorg/telegram/tgnet/TLRPC$PhotoSize;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x27deb2bf


# instance fields
.field public svgPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58853
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 58858
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 58859
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const/16 p2, 0x32

    .line 58860
    iput p2, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput p2, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 58861
    invoke-static {p1}, Lorg/telegram/messenger/SvgHelper;->decompress([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/SvgHelper;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;->svgPath:Landroid/graphics/Path;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 58865
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_photoPathSize;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 58866
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 58867
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
