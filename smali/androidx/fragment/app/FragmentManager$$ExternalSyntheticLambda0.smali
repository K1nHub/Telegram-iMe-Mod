.class public final synthetic Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->$r8$lambda$XfPeDpLzKWrJr916TDyhue4S3eM(Landroidx/fragment/app/FragmentManager;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
