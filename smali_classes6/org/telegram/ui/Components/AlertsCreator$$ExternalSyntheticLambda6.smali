.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;[IIILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$0:J

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$2:[I

    iput p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$3:I

    iput p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$4:I

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-wide v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$0:J

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$2:[I

    iget v4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$3:I

    iget v5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$4:I

    iget-object v6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda6;->f$5:Ljava/lang/Runnable;

    move-object v7, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$DxLInSrzCFp1v0F80Mnmh8cNNjA(JLjava/lang/String;[IIILjava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
