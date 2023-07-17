.class Lcom/iMe/fork/ui/dialog/TranslateAlert$6;
.super Landroid/graphics/drawable/ColorDrawable;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;I)V
    .locals 0

    .line 1268
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$6;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .locals 0

    .line 1271
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1272
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$6;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$1800(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
