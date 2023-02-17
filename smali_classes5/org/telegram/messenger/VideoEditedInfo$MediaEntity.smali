.class public Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;
.super Ljava/lang/Object;
.source "VideoEditedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/VideoEditedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaEntity"
.end annotation


# instance fields
.field public animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public color:I

.field public currentFrame:F

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;",
            ">;"
        }
    .end annotation
.end field

.field public fontSize:I

.field public framesPerDraw:F

.field public height:F

.field public metadata:[I

.field public parentObject:Ljava/lang/Object;

.field public ptr:J

.field public rotation:F

.field public roundRadius:F

.field public roundRadiusCanvas:Landroid/graphics/Canvas;

.field public scale:F

.field public subType:B

.field public text:Ljava/lang/String;

.field public textAlign:I

.field public textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

.field public textViewHeight:F

.field public textViewWidth:F

.field public textViewX:F

.field public textViewY:F

.field public type:B

.field public view:Landroid/view/View;

.field public viewHeight:I

.field public viewWidth:I

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/tgnet/SerializedData;)V
    .locals 5

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v1

    iput-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 134
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readByte(Z)B

    move-result v1

    iput-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 135
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 136
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 137
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 138
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 139
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 140
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 143
    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    .line 144
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    .line 145
    invoke-virtual {v3, p1, v0}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 146
    iget-object v4, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 149
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 150
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 151
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 152
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    .line 153
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->find(Ljava/lang/String;)Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/tgnet/SerializedData;Lorg/telegram/messenger/VideoEditedInfo$1;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>(Lorg/telegram/tgnet/SerializedData;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;Lorg/telegram/tgnet/SerializedData;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->serializeTo(Lorg/telegram/tgnet/SerializedData;)V

    return-void
.end method

.method private serializeTo(Lorg/telegram/tgnet/SerializedData;)V
    .locals 2

    .line 157
    iget-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeByte(B)V

    .line 158
    iget-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeByte(B)V

    .line 159
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 160
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 161
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 162
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 163
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeFloat(F)V

    .line 164
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    const/4 v0, 0x0

    .line 166
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 170
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 171
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 172
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 173
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/SerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;
    .locals 3

    .line 178
    new-instance v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v0}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 179
    iget-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    iput-byte v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 180
    iget-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iput-byte v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 181
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 182
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 183
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 184
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 185
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 186
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 187
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 189
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 190
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 191
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 192
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 193
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 194
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 195
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 196
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    .line 197
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    .line 198
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    return-object v0
.end method
