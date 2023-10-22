.class Lorg/telegram/ui/Stories/recorder/HintView2$1;
.super Landroid/graphics/drawable/Drawable;
.source "HintView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/HintView2;->setSelectorColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/HintView2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/HintView2$1;->this$0:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 385
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/HintView2$1;->this$0:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->access$000(Lorg/telegram/ui/Stories/recorder/HintView2;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/HintView2$1;->this$0:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->access$100(Lorg/telegram/ui/Stories/recorder/HintView2;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 388
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
