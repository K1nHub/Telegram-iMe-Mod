.class public Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x37096c70


# instance fields
.field public code:Ljava/lang/String;

.field public flags:I

.field public new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54044
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54052
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$auth_Authorization;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 54056
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54057
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54058
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 54059
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 54060
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_recoverPassword;->new_settings:Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_account_passwordInputSettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_0
    return-void
.end method
