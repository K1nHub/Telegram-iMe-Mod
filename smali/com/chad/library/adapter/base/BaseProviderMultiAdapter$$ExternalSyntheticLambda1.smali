.class public final synthetic Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic f$1:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

.field public final synthetic f$2:Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    iput-object p3, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda1;->f$1:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$$ExternalSyntheticLambda1;->f$2:Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    invoke-static {v0, v1, v2, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->$r8$lambda$5vtJpszPzEMj4WMvi_na6cN37JY(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/chad/library/adapter/base/provider/BaseItemProvider;Landroid/view/View;)V

    return-void
.end method
