.class public final synthetic Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic f$1:Lcom/chad/library/adapter/base/BaseQuickAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseQuickAdapter$$ExternalSyntheticLambda2;->f$1:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-static {v0, v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->$r8$lambda$MbMlS2ILMWb5ym3uHOt0lVti5ew(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
