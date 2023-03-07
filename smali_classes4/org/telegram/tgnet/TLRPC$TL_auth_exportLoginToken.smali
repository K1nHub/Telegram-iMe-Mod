.class public Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x481f7a02


# instance fields
.field public api_hash:Ljava/lang/String;

.field public api_id:I

.field public except_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50722
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 50727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->except_ids:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 50730
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$auth_LoginToken;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$auth_LoginToken;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4

    .line 50734
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 50735
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 50736
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    const v0, 0x1cb5c415

    .line 50737
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 50738
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->except_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 50739
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 50741
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->except_ids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
