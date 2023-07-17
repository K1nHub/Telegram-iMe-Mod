.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;
.super Lorg/telegram/ui/Components/StickerMasksAlert;
.source "LPhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->openStickersView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

.field final synthetic val$wasSelectedIndex:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 1326
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iput p5, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;->val$wasSelectedIndex:I

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/StickerMasksAlert;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onDismissAnimationStart()V
    .locals 2

    .line 1329
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onDismissAnimationStart()V

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$16;->val$wasSelectedIndex:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$3300(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;I)V

    return-void
.end method
