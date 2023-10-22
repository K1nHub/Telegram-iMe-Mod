.class Lorg/telegram/ui/Components/AnimatedFileDrawable$3;
.super Ljava/lang/Object;
.source "AnimatedFileDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedFileDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Lorg/telegram/messenger/AnimatedFileDrawableStream;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$802(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1010(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    .line 261
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1202(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    goto :goto_1

    .line 264
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1102(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    .line 266
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$102(Lorg/telegram/ui/Components/AnimatedFileDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1402(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    move v0, v1

    .line 271
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 272
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 275
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1402(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    move v0, v1

    .line 278
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 279
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 281
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1402(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2100(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2002(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2102(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    move v0, v1

    .line 286
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 287
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    .line 288
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 291
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2002(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2102(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    move v0, v1

    .line 293
    :goto_5
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 294
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v5

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 298
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1502(Lorg/telegram/ui/Components/AnimatedFileDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move v0, v1

    .line 299
    :goto_6
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 300
    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$1800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[Landroid/graphics/BitmapShader;

    move-result-object v4

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 303
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2302(Lorg/telegram/ui/Components/AnimatedFileDrawable;Z)Z

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    add-int/2addr v3, v2

    iput v3, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->repeatCount:I

    .line 306
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->checkRepeat()V

    .line 309
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    const/4 v2, 0x3

    aget v0, v0, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v3

    if-ge v0, v3, :cond_a

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_7

    :cond_9
    move v3, v1

    :goto_7
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2502(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    .line 312
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v0

    aget v0, v0, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v3

    sub-int/2addr v0, v3

    if-eqz v0, :cond_b

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v3

    aget v3, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2500(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2700(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2600(Lorg/telegram/ui/Components/AnimatedFileDrawable;)I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_b

    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    .line 318
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2800(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2900(Lorg/telegram/ui/Components/AnimatedFileDrawable;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_c

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2802(Lorg/telegram/ui/Components/AnimatedFileDrawable;J)J

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2602(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    .line 322
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2400(Lorg/telegram/ui/Components/AnimatedFileDrawable;)[I

    move-result-object v3

    aget v2, v3, v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$2502(Lorg/telegram/ui/Components/AnimatedFileDrawable;I)I

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8
    if-ge v1, v0, :cond_d

    .line 325
    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$3000(Lorg/telegram/ui/Components/AnimatedFileDrawable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 328
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$300(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedFileDrawable$3;->this$0:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->access$200(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    return-void
.end method
