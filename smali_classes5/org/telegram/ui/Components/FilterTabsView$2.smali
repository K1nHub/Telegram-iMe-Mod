.class Lorg/telegram/ui/Components/FilterTabsView$2;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "FilterTabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/AnimationProperties$FloatProperty<",
        "Lorg/telegram/ui/Components/FilterTabsView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;Ljava/lang/String;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/Float;
    .locals 0

    .line 1175
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$2700(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1152
    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$2;->get(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1152
    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/FilterTabsView$2;->setValue(Lorg/telegram/ui/Components/FilterTabsView;F)V

    return-void
.end method

.method public setValue(Lorg/telegram/ui/Components/FilterTabsView;F)V
    .locals 3

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/FilterTabsView;->access$2702(Lorg/telegram/ui/Components/FilterTabsView;F)F

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$4000(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 1158
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$4100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 1159
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$4200(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-static {v0, v1, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->isWithBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$3100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 1163
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$3000(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 1164
    invoke-static {v0, v1, p2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BlurredFrameLayout;->setBackgroundColor(I)V

    .line 1168
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p2}, Lorg/telegram/ui/Components/FilterTabsView;->access$4300(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 1169
    iget-object p2, p0, Lorg/telegram/ui/Components/FilterTabsView$2;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p2}, Lorg/telegram/ui/Components/FilterTabsView;->access$4300(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    .line 1170
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
