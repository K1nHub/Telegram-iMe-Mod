.class public abstract Lorg/telegram/tgnet/TLRPC$help_PassportConfig;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53162
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$help_PassportConfig;
    .locals 1

    const v0, -0x5f672951

    if-eq p1, v0, :cond_1

    const v0, -0x40460ba9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 53168
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfigNotModified;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfigNotModified;-><init>()V

    goto :goto_0

    .line 53171
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_passportConfig;-><init>()V

    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 53175
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in help_PassportConfig"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 53178
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLObject;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    :cond_4
    return-object v0
.end method
