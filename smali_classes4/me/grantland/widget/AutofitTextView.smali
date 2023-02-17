.class public Lme/grantland/widget/AutofitTextView;
.super Landroid/widget/TextView;
.source "AutofitTextView.java"

# interfaces
.implements Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;


# instance fields
.field private mHelper:Lme/grantland/widget/AutofitHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lme/grantland/widget/AutofitTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-static {p0, p2, p3}, Lme/grantland/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lme/grantland/widget/AutofitHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lme/grantland/widget/AutofitHelper;->addOnTextSizeChangeListener(Lme/grantland/widget/AutofitHelper$OnTextSizeChangeListener;)Lme/grantland/widget/AutofitHelper;

    move-result-object p1

    iput-object p1, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    return-void
.end method


# virtual methods
.method public getAutofitHelper()Lme/grantland/widget/AutofitHelper;
    .locals 1

    .line 78
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    return-object v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .line 110
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0}, Lme/grantland/widget/AutofitHelper;->getMaxTextSize()F

    move-result v0

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .line 142
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0}, Lme/grantland/widget/AutofitHelper;->getMinTextSize()F

    move-result v0

    return v0
.end method

.method public getPrecision()F
    .locals 1

    .line 175
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0}, Lme/grantland/widget/AutofitHelper;->getPrecision()F

    move-result v0

    return v0
.end method

.method public onTextSizeChange(FF)V
    .locals 0

    return-void
.end method

.method public setLines(I)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 58
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxLines(I)Lme/grantland/widget/AutofitHelper;

    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 69
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxLines(I)Lme/grantland/widget/AutofitHelper;

    :cond_0
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1

    .line 122
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setMaxTextSize(F)Lme/grantland/widget/AutofitHelper;

    return-void
.end method

.method public setMinTextSize(I)V
    .locals 2

    .line 154
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    int-to-float p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lme/grantland/widget/AutofitHelper;->setMinTextSize(IF)Lme/grantland/widget/AutofitHelper;

    return-void
.end method

.method public setPrecision(F)V
    .locals 1

    .line 185
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setPrecision(F)Lme/grantland/widget/AutofitHelper;

    return-void
.end method

.method public setSizeToFit(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lme/grantland/widget/AutofitHelper;->setEnabled(Z)Lme/grantland/widget/AutofitHelper;

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    iget-object v0, p0, Lme/grantland/widget/AutofitTextView;->mHelper:Lme/grantland/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1, p2}, Lme/grantland/widget/AutofitHelper;->setTextSize(IF)V

    :cond_0
    return-void
.end method
