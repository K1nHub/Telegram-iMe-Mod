.class public Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public about:Ljava/lang/String;

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public last_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54703
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 54712
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x78515775

    .line 54716
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54717
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 54718
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 54719
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 54721
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 54722
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 54724
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 54725
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_updateProfile;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
