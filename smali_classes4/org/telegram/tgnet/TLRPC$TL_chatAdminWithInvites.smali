.class public Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0xd1310dd


# instance fields
.field public admin_id:J

.field public invites_count:I

.field public revoked_invites_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35525
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;
    .locals 1

    .line 35533
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35535
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_chatAdminWithInvites"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35540
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;-><init>()V

    .line 35541
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 35546
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    .line 35547
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->invites_count:I

    .line 35548
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->revoked_invites_count:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 35552
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35553
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 35554
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->invites_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35555
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->revoked_invites_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
