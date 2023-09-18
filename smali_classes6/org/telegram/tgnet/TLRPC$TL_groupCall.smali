.class public Lorg/telegram/tgnet/TLRPC$TL_groupCall;
.super Lorg/telegram/tgnet/TLRPC$GroupCall;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x2a689af4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2960
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$GroupCall;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 2965
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2966
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_muted:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 2967
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 2968
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_date_asc:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    .line 2969
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_start_subscribed:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    .line 2970
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    .line 2971
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_video_active:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v3

    .line 2972
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    .line 2973
    :goto_7
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->listeners_hidden:Z

    .line 2974
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    .line 2975
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    .line 2976
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 2977
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 2978
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    .line 2980
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 2981
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    .line 2983
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    .line 2984
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_start_date:I

    .line 2986
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 2987
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    .line 2989
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 2990
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_count:I

    .line 2992
    :cond_c
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_limit:I

    .line 2993
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 2997
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_groupCall;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2998
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_muted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 2999
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 3000
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_date_asc:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x41

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 3001
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_start_subscribed:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x100

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x101

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 3002
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x200

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x201

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 3003
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_video_active:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x800

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x801

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 3004
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x1000

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x1001

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 3005
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->listeners_hidden:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x2000

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x2001

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 3006
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3007
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 3008
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 3009
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3010
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    .line 3011
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 3013
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 3014
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3016
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    .line 3017
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_start_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3019
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 3020
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3022
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 3023
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_count:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3025
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->unmuted_video_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3026
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
