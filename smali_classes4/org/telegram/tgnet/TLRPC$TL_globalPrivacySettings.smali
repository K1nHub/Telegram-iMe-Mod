.class public Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x734c4ccb


# instance fields
.field public archive_and_mute_new_noncontact_peers:Z

.field public flags:I

.field public keep_archived_folders:Z

.field public keep_archived_unmuted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10396
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;
    .locals 1

    .line 10405
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 10407
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_globalPrivacySettings"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10412
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;-><init>()V

    .line 10413
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 10418
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 10419
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 10420
    :goto_1
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->keep_archived_unmuted:Z

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    move v0, v1

    .line 10421
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->keep_archived_folders:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 10425
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 10426
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    .line 10427
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->keep_archived_unmuted:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    .line 10428
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->keep_archived_folders:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    .line 10429
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
