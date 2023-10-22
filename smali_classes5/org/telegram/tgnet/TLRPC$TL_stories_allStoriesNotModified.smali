.class public Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;
.super Lorg/telegram/tgnet/TLRPC$stories_AllStories;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x1158fe3e


# instance fields
.field public flags:I

.field public state:Ljava/lang/String;

.field public stealth_mode:Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$stories_AllStories;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->flags:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->stealth_mode:Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_stories_allStoriesNotModified;->stealth_mode:Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_storiesStealthMode;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
