.class Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView$2;
.super Landroid/widget/TextView;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;Landroid/content/Context;)V
    .locals 0

    .line 1621
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 1624
    invoke-static {}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1400()I

    move-result p1

    invoke-static {}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1400()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
