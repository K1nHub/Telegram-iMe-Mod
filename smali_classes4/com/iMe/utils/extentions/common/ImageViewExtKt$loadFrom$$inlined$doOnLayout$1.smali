.class public final Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ImageViewExt.kt\ncom/iMe/utils/extentions/common/ImageViewExtKt\n*L\n1#1,432:1\n72#2:433\n73#2:437\n85#3,3:434\n*E\n"
.end annotation


# instance fields
.field final synthetic $isRounded$inlined:Z

.field final synthetic $placeholderDrawable$inlined:Lorg/telegram/ui/Components/LoadingDrawable;

.field final synthetic $this_loadFrom$inlined:Landroid/widget/ImageView;

.field final synthetic $url$inlined:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/LoadingDrawable;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$placeholderDrawable$inlined:Lorg/telegram/ui/Components/LoadingDrawable;

    iput-object p2, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$this_loadFrom$inlined:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$url$inlined:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$isRounded$inlined:Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 85
    iget-object p1, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$placeholderDrawable$inlined:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-object p2, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$this_loadFrom$inlined:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 86
    iget-object p1, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$this_loadFrom$inlined:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$url$inlined:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "context"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$placeholderDrawable$inlined:Lorg/telegram/ui/Components/LoadingDrawable;

    iget-boolean p5, p0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;->$isRounded$inlined:Z

    invoke-static {p1, p2, p3, p4, p5}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->access$loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method
