.class public final synthetic Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatActivityEnterView$60;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView$60;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView$60;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$1:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$60$$ExternalSyntheticLambda3;->f$4:Ljava/lang/Object;

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/ChatActivityEnterView$60;->$r8$lambda$X6Dc4PomSNZixSRa5ZdtCsUQ_JI(Lorg/telegram/ui/Components/ChatActivityEnterView$60;Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
