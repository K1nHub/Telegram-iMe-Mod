.class public Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x7da8b51b


# instance fields
.field public phone_number:Ljava/lang/String;

.field public settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54383
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54390
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 54394
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54395
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 54396
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;->settings:Lorg/telegram/tgnet/TLRPC$TL_codeSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_codeSettings;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
