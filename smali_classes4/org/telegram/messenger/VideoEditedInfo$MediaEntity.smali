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


# static fields
.field public static final TYPE_PHOTO:I = 0x2

.field public static final TYPE_STICKER:I = 0x0

.field public static final TYPE_TEXT:I = 0x1


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

.field public textTypefaceKey:Ljava/lang/String;

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

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readByte(Z)B

    move-result v1

    iput-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 155
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readByte(Z)B

    move-result v1

    iput-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 156
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 157
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 158
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 159
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 160
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 161
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 162
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 164
    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    .line 165
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    .line 166
    invoke-virtual {v3, p1, v0}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 167
    iget-object v4, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 170
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 171
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 172
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 173
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    .line 174
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->find(Ljava/lang/String;)Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 175
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 176
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 177
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 178
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 179
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    if-eqz p2, :cond_2

    .line 181
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    .line 182
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_null;->constructor:I

    if-ne p2, v1, :cond_1

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_1

    .line 185
    :cond_1
    invoke-static {p1, p2, v0}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public copy()Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;
    .locals 3

    .line 224
    new-instance v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v0}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 225
    iget-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    iput-byte v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 226
    iget-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iput-byte v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 227
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 228
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 229
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 230
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 231
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 232
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 233
    iget-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 235
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 236
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 237
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 238
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 239
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 240
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 241
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 242
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    .line 243
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    .line 244
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    return-object v0
.end method

.method public serializeTo(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 191
    iget-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByte(B)V

    .line 192
    iget-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByte(B)V

    .line 193
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 194
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 195
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 196
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 197
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 198
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v0, 0x0

    .line 200
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 204
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 205
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 206
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 207
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 208
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 210
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 211
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 212
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 213
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    if-eqz p2, :cond_4

    .line 215
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p2, :cond_3

    .line 216
    sget p2, Lorg/telegram/tgnet/TLRPC$TL_null;->constructor:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_2

    .line 218
    :cond_3
    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_4
    :goto_2
    return-void
.end method
