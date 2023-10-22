.class public Lorg/telegram/tgnet/TLRPC$TL_webPage_old;
.super Lorg/telegram/tgnet/TLRPC$TL_webPage;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5ce15f4b


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21876
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 21881
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    .line 21882
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    .line 21883
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 21884
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->display_url:Ljava/lang/String;

    .line 21885
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21886
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->type:Ljava/lang/String;

    .line 21888
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 21889
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    .line 21891
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 21892
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    .line 21894
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 21895
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    .line 21897
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 21898
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 21900
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 21901
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    .line 21903
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 21904
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_type:Ljava/lang/String;

    .line 21906
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 21907
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    .line 21909
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 21910
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    .line 21912
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 21913
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->duration:I

    .line 21915
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 21916
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->author:Ljava/lang/String;

    :cond_a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 21921
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21922
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21923
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 21924
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21925
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21926
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 21927
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21929
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 21930
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21932
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 21933
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21935
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 21936
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21938
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 21939
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 21941
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 21942
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21944
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 21945
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 21947
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 21948
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21950
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 21951
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21953
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 21954
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 21956
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 21957
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WebPage;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_a
    return-void
.end method
