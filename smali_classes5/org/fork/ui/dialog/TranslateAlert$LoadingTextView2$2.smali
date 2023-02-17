.class Lorg/fork/ui/dialog/TranslateAlert$LoadingTextView2$2;
.super Landroid/widget/TextView;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/TranslateAlert$LoadingTextView2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/TranslateAlert$LoadingTextView2;Landroid/content/Context;)V
    .locals 0

    .line 1928
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 1931
    invoke-static {}, Lorg/fork/ui/dialog/TranslateAlert;->access$1500()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
