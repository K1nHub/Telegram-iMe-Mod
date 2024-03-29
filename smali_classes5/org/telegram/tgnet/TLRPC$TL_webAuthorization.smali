.class public Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public bot_id:J

.field public browser:Ljava/lang/String;

.field public date_active:I

.field public date_created:I

.field public domain:Ljava/lang/String;

.field public hash:J

.field public ip:Ljava/lang/String;

.field public platform:Ljava/lang/String;

.field public region:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44846
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;
    .locals 1

    const v0, -0x59070bae

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44862
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_webAuthorization"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44867
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;-><init>()V

    .line 44868
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 44873
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    .line 44874
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->bot_id:J

    .line 44875
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->domain:Ljava/lang/String;

    .line 44876
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->browser:Ljava/lang/String;

    .line 44877
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->platform:Ljava/lang/String;

    .line 44878
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->date_created:I

    .line 44879
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->date_active:I

    .line 44880
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->ip:Ljava/lang/String;

    .line 44881
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->region:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x59070bae

    .line 44885
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44886
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 44887
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->bot_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 44888
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 44889
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->browser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 44890
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->platform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 44891
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->date_created:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44892
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->date_active:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44893
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 44894
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webAuthorization;->region:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
