.class Lorg/telegram/ui/GLIconSettingsView$3;
.super Ljava/lang/Object;
.source "GLIconSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GLIconSettingsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GLIconSettingsView;Landroid/content/Context;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V
    .locals 0

    .line 90
    iput-object p2, p0, Lorg/telegram/ui/GLIconSettingsView$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/GLIconSettingsView$3;->val$mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 93
    new-instance p1, Lorg/telegram/ui/GLIconSettingsView$3$2;

    iget-object v0, p0, Lorg/telegram/ui/GLIconSettingsView$3;->val$context:Landroid/content/Context;

    new-instance v1, Lorg/telegram/ui/GLIconSettingsView$3$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GLIconSettingsView$3$1;-><init>(Lorg/telegram/ui/GLIconSettingsView$3;)V

    const/4 v8, 0x0

    invoke-direct {p1, p0, v0, v8, v1}, Lorg/telegram/ui/GLIconSettingsView$3$2;-><init>(Lorg/telegram/ui/GLIconSettingsView$3;Landroid/content/Context;ZLorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/GLIconSettingsView$3;->val$mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->star:Lorg/telegram/ui/Components/Premium/GLIcon/Star3DIcon;

    iget v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/Star3DIcon;->specColor:I

    invoke-virtual {p1, v0, v8}, Lorg/telegram/ui/Components/ColorPicker;->setColor(II)V

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 106
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/ColorPicker;->setType(IZIIZIZ)V

    .line 107
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/GLIconSettingsView$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 108
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehind(Z)V

    .line 110
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method
