.class public Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;
.super Lorg/telegram/tgnet/TLRPC$WallPaperSettings;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x1dc1bca4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39838
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 39843
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 39844
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 39845
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 39847
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    .line 39849
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 39850
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    .line 39852
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 39853
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    .line 39855
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 39856
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    .line 39858
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 39859
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 39861
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 39862
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    :cond_7
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 39867
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaperSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39868
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, -0x3

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 39869
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->motion:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x5

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    .line 39870
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39871
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 39872
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39874
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 39875
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39877
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    .line 39878
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39880
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    .line 39881
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39883
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 39884
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39886
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 39887
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_7
    return-void
.end method
