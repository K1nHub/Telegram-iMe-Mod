.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/HashMap;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(ILjava/util/HashMap;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda7;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda7;->f$1:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda7;->f$2:Z

    iput-boolean p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda7;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda7;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda7;->f$1:Ljava/util/HashMap;

    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda7;->f$2:Z

    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda7;->f$3:Z

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$o2oSwCCTKwQ3L18UoPSbcWt4JP8(ILjava/util/HashMap;ZZLandroid/content/DialogInterface;I)V

    return-void
.end method
