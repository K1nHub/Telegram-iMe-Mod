.class Lorg/fork/ui/dialog/TranslateAlert$3;
.super Lorg/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;
.source "TranslateAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLorg/fork/ui/dialog/TranslateAlert$OnLinkPress;Ljava/lang/Runnable;Lcom/smedialink/model/translation/TranslationArgs;Lorg/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/TranslateAlert;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/TranslateAlert;Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 0

    .line 811
    iput-object p1, p0, Lorg/fork/ui/dialog/TranslateAlert$3;->this$0:Lorg/fork/ui/dialog/TranslateAlert;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    return-void
.end method


# virtual methods
.method protected onLoadAnimation(F)V
    .locals 4

    .line 814
    iget-object v0, p0, Lorg/fork/ui/dialog/TranslateAlert$3;->this$0:Lorg/fork/ui/dialog/TranslateAlert;

    invoke-static {v0}, Lorg/fork/ui/dialog/TranslateAlert;->access$900(Lorg/fork/ui/dialog/TranslateAlert;)Lorg/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 816
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    mul-float/2addr p1, v2

    sub-float/2addr v3, p1

    .line 817
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    mul-float/2addr p1, v2

    sub-float/2addr v3, p1

    .line 819
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 821
    :goto_0
    iget-object p1, p0, Lorg/fork/ui/dialog/TranslateAlert$3;->this$0:Lorg/fork/ui/dialog/TranslateAlert;

    invoke-static {p1}, Lorg/fork/ui/dialog/TranslateAlert;->access$900(Lorg/fork/ui/dialog/TranslateAlert;)Lorg/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
