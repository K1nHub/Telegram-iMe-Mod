.class public Lorg/telegram/tgnet/TLRPC$TL_account_resetPasswordOk;
.super Lorg/telegram/tgnet/TLRPC$account_ResetPasswordResult;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x16d929c2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52238
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$account_ResetPasswordResult;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 52243
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_resetPasswordOk;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
