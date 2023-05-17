.class public final synthetic Lcom/iMe/ui/popupMenu/PopupMenuExtKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/widget/ListPopupWindow;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/widget/ListPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/popupMenu/PopupMenuExtKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/iMe/ui/popupMenu/PopupMenuExtKt$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ListPopupWindow;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/iMe/ui/popupMenu/PopupMenuExtKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/ui/popupMenu/PopupMenuExtKt$$ExternalSyntheticLambda0;->f$1:Landroid/widget/ListPopupWindow;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/iMe/ui/popupMenu/PopupMenuExtKt;->$r8$lambda$FqSgRg13wrHBMQAkJJUdvlCi0xk(Ljava/util/List;Landroid/widget/ListPopupWindow;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
