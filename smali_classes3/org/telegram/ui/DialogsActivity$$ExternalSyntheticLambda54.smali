.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda54;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda54;->f$1:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda54;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda54;->f$1:I

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$hxs2GuKX8AMcxWhMj1TyiDCVOqg(Lorg/telegram/ui/DialogsActivity;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
