.class public Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;
.super Lorg/telegram/tgnet/TLRPC$InputUser;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x83e4ec1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18717
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputUser;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 18722
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputUserSelf;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
