.class public Lcom/google/android/material/internal/VisibilityAwareImageButton;
.super Landroid/widget/ImageButton;
.source "VisibilityAwareImageButton.java"


# instance fields
.field private userSetVisibility:I


# virtual methods
.method public final getUserSetVisibility()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/android/material/internal/VisibilityAwareImageButton;->userSetVisibility:I

    return v0
.end method

.method public final internalSetVisibility(IZ)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 59
    iput p1, p0, Lcom/google/android/material/internal/VisibilityAwareImageButton;->userSetVisibility:I

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    return-void
.end method
