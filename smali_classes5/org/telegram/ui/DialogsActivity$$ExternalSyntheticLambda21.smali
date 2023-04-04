.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I

.field public final synthetic f$3:[Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;I[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda21;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda21;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda21;->f$3:[Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda21;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda21;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda21;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda21;->f$3:[Z

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$BoiUba0hZLbTTfDo0FLJUXCsmk8(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;I[ZLandroid/content/DialogInterface;I)V

    return-void
.end method
