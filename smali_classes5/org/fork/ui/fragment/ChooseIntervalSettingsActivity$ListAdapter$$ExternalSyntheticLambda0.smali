.class public final synthetic Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/SlideChooseView$Callback;


# instance fields
.field public final synthetic f$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    return-void
.end method


# virtual methods
.method public final onOptionSelected(I)V
    .locals 1

    iget-object v0, p0, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;

    invoke-static {v0, p1}, Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity$ListAdapter;->$r8$lambda$qM0SLZyvGb2aaDwZexcvXcL4ZZE(Lorg/fork/ui/fragment/ChooseIntervalSettingsActivity;I)V

    return-void
.end method

.method public synthetic onTouchEnd()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/SlideChooseView$Callback$-CC;->$default$onTouchEnd(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    return-void
.end method
