.class public Lorg/telegram/messenger/MessagesController$FaqSearchResult;
.super Ljava/lang/Object;
.source "MessagesController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaqSearchResult"
.end annotation


# instance fields
.field public num:I

.field public path:[Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    .line 1119
    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    .line 1120
    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1125
    instance-of v0, p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1128
    :cond_0
    check-cast p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;

    .line 1129
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1134
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 1135
    iget v1, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->num:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v1, 0x0

    .line 1136
    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 1137
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1138
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    if-eqz v2, :cond_0

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 1139
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1140
    :goto_1
    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->path:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1141
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1144
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$FaqSearchResult;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
