.class final Lcom/iMe/ui/custom/donation/DonationSeeMoreButton$textView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DonationSeeMoreButton.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;


# direct methods
.method constructor <init>(Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton$textView$2;->this$0:Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton$textView$2;->this$0:Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;

    invoke-static {v0}, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;->access$initTextView(Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton$textView$2;->invoke()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    return-object v0
.end method
