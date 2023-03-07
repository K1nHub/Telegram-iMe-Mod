.class public Lorg/telegram/tgnet/TLRPC$TL_authorization;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x52fe29e3


# instance fields
.field public api_id:I

.field public app_name:Ljava/lang/String;

.field public app_version:Ljava/lang/String;

.field public call_requests_disabled:Z

.field public country:Ljava/lang/String;

.field public current:Z

.field public date_active:I

.field public date_created:I

.field public device_model:Ljava/lang/String;

.field public encrypted_requests_disabled:Z

.field public flags:I

.field public hash:J

.field public ip:Ljava/lang/String;

.field public official_app:Z

.field public password_pending:Z

.field public platform:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public system_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5094
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_authorization;
    .locals 1

    .line 5117
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5119
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_authorization"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5124
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_authorization;-><init>()V

    .line 5125
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_authorization;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 5130
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5131
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->current:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 5132
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->official_app:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 5133
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->password_pending:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 5134
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->encrypted_requests_disabled:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    .line 5135
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->call_requests_disabled:Z

    .line 5136
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    .line 5137
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->device_model:Ljava/lang/String;

    .line 5138
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    .line 5139
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->system_version:Ljava/lang/String;

    .line 5140
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->api_id:I

    .line 5141
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    .line 5142
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_version:Ljava/lang/String;

    .line 5143
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->date_created:I

    .line 5144
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->date_active:I

    .line 5145
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->ip:Ljava/lang/String;

    .line 5146
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->country:Ljava/lang/String;

    .line 5147
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->region:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 5151
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5152
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->current:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    .line 5153
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->official_app:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    .line 5154
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->password_pending:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    .line 5155
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->encrypted_requests_disabled:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    .line 5156
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->call_requests_disabled:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    .line 5157
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5158
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 5159
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->device_model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5160
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->platform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5161
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->system_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5162
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->api_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5163
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5164
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->app_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5165
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->date_created:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5166
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->date_active:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5167
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->ip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5168
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 5169
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->region:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
