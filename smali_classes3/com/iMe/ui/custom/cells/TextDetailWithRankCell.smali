.class public final Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;
.super Lorg/telegram/ui/Cells/TextDetailCell;
.source "TextDetailWithRankCell.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/cells/TextDetailWithRankCell$Companion;
    }
.end annotation


# instance fields
.field private final badgeView$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell$badgeView$2;

    invoke-direct {v0, p1}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell$badgeView$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;->badgeView$delegate:Lkotlin/Lazy;

    .line 18
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;->getBadgeView()Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    move-result-object p1

    .line 21
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v3, v0, 0x10

    const/16 v4, 0x17

    const/4 v5, 0x0

    const/16 v6, 0x17

    const/4 v7, 0x0

    const/4 v1, -0x2

    const/4 v2, -0x2

    .line 18
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final getBadgeView()Lcom/iMe/fork/ui/view/AccountLevelBadgeView;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;->badgeView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    return-object v0
.end method


# virtual methods
.method public final setAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;->getBadgeView()Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/view/AccountLevelBadgeView;->setAccountLevel(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public final setBadgeClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/iMe/ui/custom/cells/TextDetailWithRankCell;->getBadgeView()Lcom/iMe/fork/ui/view/AccountLevelBadgeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
