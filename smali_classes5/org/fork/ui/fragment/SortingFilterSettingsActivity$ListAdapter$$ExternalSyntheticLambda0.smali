.class public final synthetic Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

.field public final synthetic f$1:Lorg/fork/models/SortingTabState;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;Lorg/fork/models/SortingTabState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

    iput-object p2, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/fork/models/SortingTabState;

    iput p3, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

    iget-object v1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/fork/models/SortingTabState;

    iget v2, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->$r8$lambda$35Q8C9joAPW3Mf4AIKNh7x4coYE(Lorg/fork/ui/fragment/SortingFilterSettingsActivity;Lorg/fork/models/SortingTabState;I)V

    return-void
.end method
