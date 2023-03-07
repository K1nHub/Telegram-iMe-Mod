.class Lorg/telegram/ui/Cells/ArchiveHintCell$2;
.super Ljava/lang/Object;
.source "ArchiveHintCell.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ArchiveHintCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ArchiveHintCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ArchiveHintCell;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintCell$2;->this$0:Lorg/telegram/ui/Cells/ArchiveHintCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 51
    iget-object p3, p0, Lorg/telegram/ui/Cells/ArchiveHintCell$2;->this$0:Lorg/telegram/ui/Cells/ArchiveHintCell;

    invoke-static {p3}, Lorg/telegram/ui/Cells/ArchiveHintCell;->access$100(Lorg/telegram/ui/Cells/ArchiveHintCell;)Lorg/telegram/ui/Components/BottomPagesView;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Components/BottomPagesView;->setPageOffset(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method
