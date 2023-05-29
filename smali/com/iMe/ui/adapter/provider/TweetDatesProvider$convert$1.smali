.class final Lcom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TweetDatesProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/TweetDatesProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetsDateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/widget/TextView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTweetDatesProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TweetDatesProvider.kt\ncom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,40:1\n68#2,4:41\n40#2:45\n56#2:46\n75#2:47\n*S KotlinDebug\n*F\n+ 1 TweetDatesProvider.kt\ncom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1\n*L\n28#1:41,4\n28#1:45\n28#1:46\n28#1:47\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1;

    invoke-direct {v0}, Lcom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1;-><init>()V

    sput-object v0, Lcom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1;->invoke(Landroid/widget/TextView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/TextView;)V
    .locals 3

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 30
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1$invoke$$inlined$doOnLayout$1;

    invoke-direct {v0, p1}, Lcom/iMe/ui/adapter/provider/TweetDatesProvider$convert$1$invoke$$inlined$doOnLayout$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method
