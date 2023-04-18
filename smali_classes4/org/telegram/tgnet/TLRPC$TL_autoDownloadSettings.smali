.class public Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x710546ad


# instance fields
.field public audio_preload_next:Z

.field public disabled:Z

.field public file_size_max:J

.field public flags:I

.field public phonecalls_less_data:Z

.field public photo_size_max:I

.field public video_preload_large:Z

.field public video_size_max:J

.field public video_upload_maxbitrate:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42747
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;
    .locals 1

    .line 42761
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42763
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_autoDownloadSettings"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42768
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;-><init>()V

    .line 42769
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 42774
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 42775
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->disabled:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 42776
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->video_preload_large:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 42777
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->audio_preload_next:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v2, v3

    .line 42778
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->phonecalls_less_data:Z

    .line 42779
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->photo_size_max:I

    .line 42780
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->video_size_max:J

    .line 42781
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->file_size_max:J

    .line 42782
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->video_upload_maxbitrate:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 42786
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42787
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->disabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->flags:I

    .line 42788
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->video_preload_large:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->flags:I

    .line 42789
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->audio_preload_next:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->flags:I

    .line 42790
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->phonecalls_less_data:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->flags:I

    .line 42791
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42792
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->photo_size_max:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42793
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->video_size_max:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 42794
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->file_size_max:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 42795
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_autoDownloadSettings;->video_upload_maxbitrate:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
