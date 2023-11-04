.class public Lorg/telegram/tgnet/TLRPC$TL_account_acceptAuthorization;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public bot_id:J

.field public credentials:Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;

.field public public_key:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field public value_hashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_secureValueHash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57156
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 57162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_acceptAuthorization;->value_hashes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57166
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Bool;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Bool;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    const v0, -0xc12b38d

    .line 57170
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57171
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_acceptAuthorization;->bot_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 57172
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_acceptAuthorization;->scope:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 57173
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_acceptAuthorization;->public_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    const v0, 0x1cb5c415

    .line 57174
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57175
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_acceptAuthorization;->value_hashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57176
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 57178
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_account_acceptAuthorization;->value_hashes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_secureValueHash;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_secureValueHash;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57180
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_acceptAuthorization;->credentials:Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_secureCredentialsEncrypted;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
