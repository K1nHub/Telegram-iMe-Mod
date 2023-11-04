.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;
.super Lorg/telegram/ui/Components/Premium/LimitPreviewView;
.source "LimitReachedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->lambda$onViewCreated$10(Landroid/content/Context;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;IIIFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 453
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;IIIFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->access$000(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 459
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
