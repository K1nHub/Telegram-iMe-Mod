.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda24;->f$1:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda24;->f$1:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$TmlB3HbzEKXqeGunVk1gNt9YXvE(Lorg/telegram/ui/ProfileActivity;Landroid/widget/ImageView;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
