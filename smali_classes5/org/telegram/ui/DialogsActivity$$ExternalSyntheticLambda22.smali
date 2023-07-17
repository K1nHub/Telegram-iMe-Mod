.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:[Z

.field public final synthetic f$3:[Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;[Z[ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$2:[Z

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$3:[Z

    iput p5, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$4:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$2:[Z

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$3:[Z

    iget v4, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda22;->f$4:I

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$pF52qf5R0t0YzR_0bbsgY858Zg0(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;[Z[ZILandroid/content/DialogInterface;I)V

    return-void
.end method
