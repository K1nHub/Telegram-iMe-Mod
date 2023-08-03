.class public Lorg/telegram/tgnet/TLRPC$TL_user_layer65;
.super Lorg/telegram/tgnet/TLRPC$TL_user;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x2ef26866


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24826
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 6

    .line 24831
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 24832
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 24833
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 24834
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 24835
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 24836
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 24837
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 24838
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 24839
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    const/high16 v1, 0x40000

    and-int v4, v0, v1

    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_8

    :cond_8
    move v4, v2

    .line 24840
    :goto_8
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->restricted:Z

    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_9

    :cond_9
    move v4, v2

    .line 24841
    :goto_9
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    const/high16 v4, 0x200000

    and-int/2addr v0, v4

    if-eqz v0, :cond_a

    move v2, v3

    .line 24842
    :cond_a
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    .line 24843
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 24844
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 24845
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    .line 24847
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 24848
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 24850
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    .line 24851
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 24853
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    .line 24854
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 24856
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_f

    .line 24857
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 24859
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_10

    .line 24860
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 24862
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_11

    .line 24863
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 24865
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    .line 24866
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_info_version:I

    .line 24868
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 24869
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    .line 24871
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    .line 24872
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    :cond_14
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 24877
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24878
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v0, v0, -0x401

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24879
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, -0x801

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24880
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x1000

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, -0x1001

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24881
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x2000

    goto :goto_3

    :cond_3
    and-int/lit16 v0, v0, -0x2001

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24882
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x4000

    goto :goto_4

    :cond_4
    and-int/lit16 v0, v0, -0x4001

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24883
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-eqz v1, :cond_5

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_5

    :cond_5
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24884
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v1, :cond_6

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_6

    :cond_6
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24885
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->verified:Z

    if-eqz v1, :cond_7

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    goto :goto_7

    :cond_7
    const v1, -0x20001

    and-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24886
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->restricted:Z

    const/high16 v2, 0x40000

    if-eqz v1, :cond_8

    or-int/2addr v0, v2

    goto :goto_8

    :cond_8
    const v1, -0x40001

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24887
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->min:Z

    if-eqz v1, :cond_9

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_9

    :cond_9
    const v1, -0x100001

    and-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24888
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v1, :cond_a

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    goto :goto_a

    :cond_a
    const v1, -0x200001

    and-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    .line 24889
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24890
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24891
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    .line 24892
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 24894
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 24895
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24897
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_d

    .line 24898
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24900
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    .line 24901
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24903
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_f

    .line 24904
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24906
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_10

    .line 24907
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24909
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_11

    .line 24910
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 24912
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    .line 24913
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 24915
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_13

    const-string v0, ""

    .line 24916
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 24918
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$User;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    .line 24919
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_14
    return-void
.end method
