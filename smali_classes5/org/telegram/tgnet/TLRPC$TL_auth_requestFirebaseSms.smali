.class public Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x76b9b4b0


# instance fields
.field public flags:I

.field public ios_push_secret:Ljava/lang/String;

.field public phone_code_hash:Ljava/lang/String;

.field public phone_number:Ljava/lang/String;

.field public safety_net_token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50767
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 50777
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 50781
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 50782
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 50783
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 50784
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->phone_code_hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 50785
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 50786
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->safety_net_token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 50788
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 50789
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_requestFirebaseSms;->ios_push_secret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
