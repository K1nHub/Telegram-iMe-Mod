.class Lorg/telegram/ui/DialogsActivity$44;
.super Landroid/view/ViewOutlineProvider;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$forwardingOptionsButtonSize:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;I)V
    .locals 0

    .line 7647
    iput p2, p0, Lorg/telegram/ui/DialogsActivity$44;->val$forwardingOptionsButtonSize:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 7651
    iget p1, p0, Lorg/telegram/ui/DialogsActivity$44;->val$forwardingOptionsButtonSize:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p1, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
