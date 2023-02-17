.class public Lcom/github/mmin18/widget/AndroidStockBlurImpl;
.super Ljava/lang/Object;
.source "AndroidStockBlurImpl.java"

# interfaces
.implements Lcom/github/mmin18/widget/BlurImpl;


# static fields
.field static DEBUG:Ljava/lang/Boolean;


# instance fields
.field private mBlurInput:Landroid/renderscript/Allocation;

.field private mBlurOutput:Landroid/renderscript/Allocation;

.field private mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mRenderScript:Landroid/renderscript/RenderScript;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isDebug(Landroid/content/Context;)Z
    .locals 3

    .line 76
    sget-object v0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->DEBUG:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->DEBUG:Ljava/lang/Boolean;

    .line 79
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->DEBUG:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 67
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 68
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 69
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public prepare(Landroid/content/Context;Landroid/graphics/Bitmap;F)Z
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_1

    .line 23
    :try_start_0
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 24
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 26
    invoke-static {p1}, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->isDebug(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->release()V

    const/4 p1, 0x0

    return p1

    .line 27
    :cond_0
    throw p2

    .line 35
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 37
    iget-object p1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object p3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    .line 39
    iget-object p2, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    return v0
.end method

.method public release()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 48
    iput-object v1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurInput:Landroid/renderscript/Allocation;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 52
    iput-object v1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurOutput:Landroid/renderscript/Allocation;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 56
    iput-object v1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 60
    iput-object v1, p0, Lcom/github/mmin18/widget/AndroidStockBlurImpl;->mRenderScript:Landroid/renderscript/RenderScript;

    :cond_3
    return-void
.end method
