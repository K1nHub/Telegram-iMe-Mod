.class public final Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$NormalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SmartBotContentAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NormalViewHolder"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "binding"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$NormalViewHolder;->binding:Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;

    return-void
.end method


# virtual methods
.method public final bindTo(Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent;)V
    .locals 4

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    check-cast p1, Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;

    .line 294
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$NormalViewHolder;->binding:Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;

    .line 295
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;->normalPhraseLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v3, "chats_actionBackground"

    .line 296
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x40c00000    # 6.0f

    .line 297
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 298
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 295
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;->normalPhrase:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/smedialink/ui/smartpanel/model/content/TabBotAnswerItem;->getPhrase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;->normalPhrase:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkBotsContentPageItemNormalBinding;->normalPhrase:Landroid/widget/TextView;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method
