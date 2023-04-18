.class Lcom/iMe/fork/ui/dialog/TranslateAlert$3;
.super Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLcom/iMe/fork/ui/dialog/TranslateAlert$OnLinkPress;Ljava/lang/Runnable;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$3;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method


# virtual methods
.method protected onLoadAnimation(F)V
    .locals 4

    .line 831
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$3;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$900(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 833
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    mul-float/2addr p1, v2

    sub-float/2addr v3, p1

    .line 834
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    mul-float/2addr p1, v2

    sub-float/2addr v3, p1

    .line 836
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 838
    :goto_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert$3;->this$0:Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->access$900(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
