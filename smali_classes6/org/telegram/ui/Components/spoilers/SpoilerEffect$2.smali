.class Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;
.super Landroid/graphics/Path;
.source "SpoilerEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilerRangesInternal(Landroid/view/View;Landroid/text/Layout;IIIILjava/util/Stack;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mostleft:I

.field final synthetic val$mostright:I

.field final synthetic val$spoilers:Ljava/util/List;

.field final synthetic val$spoilersPool:Ljava/util/Stack;

.field final synthetic val$textLayout:Landroid/text/Layout;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;II)V
    .locals 0

    .line 626
    iput-object p1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$v:Landroid/view/View;

    iput-object p2, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$textLayout:Landroid/text/Layout;

    iput-object p3, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$spoilersPool:Ljava/util/Stack;

    iput-object p4, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$spoilers:Ljava/util/List;

    iput p5, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$mostleft:I

    iput p6, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$mostright:I

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-void
.end method


# virtual methods
.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 10

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$v:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$textLayout:Landroid/text/Layout;

    iget-object v6, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$spoilersPool:Ljava/util/Stack;

    iget-object v7, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$spoilers:Ljava/util/List;

    iget v8, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$mostleft:I

    iget v9, p0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect$2;->val$mostright:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->access$1400(Landroid/view/View;Landroid/text/Layout;FFFFLjava/util/Stack;Ljava/util/List;II)V

    return-void
.end method
