.class public Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallTitle;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x1ca6ac0a


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61072
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 61079
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 61083
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallTitle;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61084
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallTitle;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61085
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallTitle;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
