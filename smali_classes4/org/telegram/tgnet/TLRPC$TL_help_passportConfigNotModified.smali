.class public Lorg/telegram/tgnet/TLRPC$TL_help_passportConfigNotModified;
.super Lorg/telegram/tgnet/TLRPC$help_PassportConfig;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x40460ba9


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49668
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$help_PassportConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 49673
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfigNotModified;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
