.class public final synthetic Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lorg/fork/models/SortingTabState;

.field public final synthetic f$1:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/fork/models/SortingTabState;Lorg/fork/ui/fragment/SortingFilterSettingsActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/fork/models/SortingTabState;

    iput-object p2, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

    iput p3, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/fork/models/SortingTabState;

    iget-object v1, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;->f$1:Lorg/fork/ui/fragment/SortingFilterSettingsActivity;

    iget v2, p0, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, v1, v2, p1}, Lorg/fork/ui/fragment/SortingFilterSettingsActivity$ListAdapter;->$r8$lambda$LTdVffj-93A5L8FdE1K2od5LNqI(Lorg/fork/models/SortingTabState;Lorg/fork/ui/fragment/SortingFilterSettingsActivity;ILjava/util/Set;)V

    return-void
.end method
