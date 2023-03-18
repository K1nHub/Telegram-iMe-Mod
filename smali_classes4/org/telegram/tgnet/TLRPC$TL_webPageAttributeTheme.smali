.class public Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x54b56617


# instance fields
.field public documents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field public flags:I

.field public settings:Lorg/telegram/tgnet/TLRPC$ThemeSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11671
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 11675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->documents:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;
    .locals 1

    .line 11679
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->constructor:I

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11681
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_webPageAttributeTheme"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11686
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;-><init>()V

    .line 11687
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 11692
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 11694
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    const v2, 0x1cb5c415

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    if-nez p2, :cond_0

    return-void

    .line 11697
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    const-string/jumbo v0, "wrong Vector magic, got %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11701
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 11703
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 11707
    :cond_2
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11710
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 11711
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ThemeSettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->settings:Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3

    .line 11716
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11717
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11718
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0x1cb5c415

    .line 11719
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 11720
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->documents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11721
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 11723
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11726
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11727
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPageAttributeTheme;->settings:Lorg/telegram/tgnet/TLRPC$ThemeSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_1
    return-void
.end method
