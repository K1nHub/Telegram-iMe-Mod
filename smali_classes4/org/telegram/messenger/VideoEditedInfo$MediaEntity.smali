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
.field public static final TYPE_LOCATION:I = 0x3

.field public static final TYPE_PHOTO:I = 0x2

.field public static final TYPE_REACTION:B = 0x4t

.field public static final TYPE_STICKER:I = 0x0

.field public static final TYPE_TEXT:I = 0x1


# instance fields
.field public H:I

.field public W:I

.field public additionalHeight:F

.field public additionalWidth:F

.field public animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field public bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field public color:I

.field public currentFrame:F

.field public density:F

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

.field public mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

.field public mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

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

.field public visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 126
    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 126
    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readByte(Z)B

    move-result v1

    iput-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 170
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readByte(Z)B

    move-result v1

    iput-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 171
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 172
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 173
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 174
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 175
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 176
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 177
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 179
    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;-><init>()V

    .line 180
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    .line 181
    invoke-virtual {v3, p1, v0}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 182
    iget-object v4, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 185
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 186
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 187
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 188
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    .line 189
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->find(Ljava/lang/String;)Lorg/telegram/ui/Components/Paint/PaintTypeface;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 190
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 191
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 192
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 193
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 194
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    if-eqz p2, :cond_2

    .line 196
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    const v1, 0x56730bcc

    if-ne p2, v1, :cond_1

    const/4 p2, 0x0

    .line 198
    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {p1, p2, v0}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 203
    :cond_2
    :goto_1
    iget-byte p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 204
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result p2

    iput p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    .line 205
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    invoke-static {p1, p2, v0}, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    .line 206
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    invoke-static {p1, p2, v0}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 207
    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->remaining()I

    move-result p2

    if-lez p2, :cond_3

    .line 208
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    const v1, -0x21524111

    if-ne p2, v1, :cond_3

    .line 210
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p2

    .line 211
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v2, :cond_3

    .line 212
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    .line 217
    :cond_3
    iget-byte p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 218
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p2

    invoke-static {p1, p2, v0}, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    :cond_4
    return-void
.end method


# virtual methods
.method public copy()Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;
    .locals 3

    .line 279
    new-instance v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    invoke-direct {v0}, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;-><init>()V

    .line 280
    iget-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    iput-byte v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    .line 281
    iget-byte v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    iput-byte v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    .line 282
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    .line 283
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    .line 284
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    .line 285
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    .line 286
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    .line 287
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalHeight:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->additionalHeight:F

    .line 288
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    .line 291
    iget-object v2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    .line 294
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    .line 295
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    .line 296
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    .line 297
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    .line 298
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    .line 299
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    .line 300
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadius:F

    .line 301
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    .line 302
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    .line 303
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    .line 304
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    .line 305
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    .line 306
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 307
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->parentObject:Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->metadata:[I

    .line 309
    iget-wide v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    iput-wide v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->ptr:J

    .line 310
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->currentFrame:F

    .line 311
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->framesPerDraw:F

    .line 312
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->bitmap:Landroid/graphics/Bitmap;

    .line 313
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->view:Landroid/view/View;

    .line 314
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->canvas:Landroid/graphics/Canvas;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->canvas:Landroid/graphics/Canvas;

    .line 315
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->animatedFileDrawable:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 316
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->roundRadiusCanvas:Landroid/graphics/Canvas;

    .line 317
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    .line 318
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 319
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    .line 320
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->W:I

    .line 321
    iget v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    iput v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->H:I

    .line 322
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iput-object v1, v0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->visibleReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object v0
.end method

.method public serializeTo(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3

    .line 223
    iget-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByte(B)V

    .line 224
    iget-byte v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->subType:B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByte(B)V

    .line 225
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->x:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 226
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->y:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 227
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->rotation:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 228
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->width:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 229
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->height:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 230
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v0, 0x0

    .line 232
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->entities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/VideoEditedInfo$EmojiEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->color:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 236
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->fontSize:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 237
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewWidth:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 238
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->viewHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 239
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textAlign:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 240
    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypeface:Lorg/telegram/ui/Components/Paint/PaintTypeface;

    const-string v1, ""

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textTypefaceKey:Ljava/lang/String;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/PaintTypeface;->getKey()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->scale:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 242
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewWidth:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 243
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewHeight:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 244
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewX:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 245
    iget v0, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->textViewY:F

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    const v0, 0x56730bcc

    if-eqz p2, :cond_4

    .line 247
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p2, :cond_3

    .line 248
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    goto :goto_2

    .line 250
    :cond_3
    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 253
    :cond_4
    :goto_2
    iget-byte p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v2, 0x3

    if-ne p2, v2, :cond_9

    .line 254
    iget p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->density:F

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeFloat(F)V

    .line 255
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 256
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 257
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    .line 259
    :cond_5
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 260
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    .line 262
    :cond_6
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 263
    iput-object v1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    .line 265
    :cond_7
    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 266
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v1, :cond_8

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    if-eqz p2, :cond_8

    const p2, -0x21524111

    .line 267
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 268
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaGeo:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->emoji:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 270
    :cond_8
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 273
    :cond_9
    :goto_3
    iget-byte p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->type:B

    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    .line 274
    iget-object p2, p0, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {p2, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_a
    return-void
.end method
