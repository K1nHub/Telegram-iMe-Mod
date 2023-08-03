.class public Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;
.super Lorg/telegram/tgnet/TLRPC$InputUser;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x46777931


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19755
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputUser;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 19760
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
