.class public Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3aa72755


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputPeer;",
            ">;"
        }
    .end annotation
.end field

.field public limit:I

.field public offset:Ljava/lang/String;

.field public sources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
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

    .line 57878
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 57882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->ids:Ljava/util/ArrayList;

    .line 57883
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->sources:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57888
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phone_groupParticipants;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 5

    .line 57892
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57893
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const v0, 0x1cb5c415

    .line 57894
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57895
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 57896
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 57898
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->ids:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57900
    :cond_0
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 57901
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->sources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 57902
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 57904
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->sources:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57906
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->offset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 57907
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_getGroupParticipants;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
