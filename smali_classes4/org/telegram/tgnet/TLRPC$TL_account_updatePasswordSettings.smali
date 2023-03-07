.class public Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5a64efd1


# instance fields
.field public new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

.field public password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53972
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 53979
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 53983
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 53984
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->password:Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 53985
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updatePasswordSettings;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
