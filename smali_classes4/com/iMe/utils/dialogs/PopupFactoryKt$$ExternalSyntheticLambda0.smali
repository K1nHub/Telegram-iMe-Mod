.class public final synthetic Lcom/iMe/utils/dialogs/PopupFactoryKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;Landroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/dialogs/PopupFactoryKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/iMe/utils/dialogs/PopupFactoryKt$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/iMe/utils/dialogs/PopupFactoryKt$$ExternalSyntheticLambda0;->f$2:Landroidx/appcompat/widget/ListPopupWindow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/iMe/utils/dialogs/PopupFactoryKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/iMe/utils/dialogs/PopupFactoryKt$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/iMe/utils/dialogs/PopupFactoryKt$$ExternalSyntheticLambda0;->f$2:Landroidx/appcompat/widget/ListPopupWindow;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/iMe/utils/dialogs/PopupFactoryKt;->$r8$lambda$Yq8NS0dR34XvvZagZuT5CZyT-ew(Lkotlin/jvm/functions/Function2;Ljava/util/List;Landroidx/appcompat/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
