.class public final Landroidx/navigation/ActivityNavigator$Extras;
.super Ljava/lang/Object;
.source "ActivityNavigator.kt"

# interfaces
.implements Landroidx/navigation/Navigator$Extras;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/ActivityNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extras"
.end annotation


# instance fields
.field private final activityOptions:Landroidx/core/app/ActivityOptionsCompat;

.field private final flags:I


# virtual methods
.method public final getActivityOptions()Landroidx/core/app/ActivityOptionsCompat;
    .locals 1

    .line 436
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator$Extras;->activityOptions:Landroidx/core/app/ActivityOptionsCompat;

    return-object v0
.end method

.method public final getFlags()I
    .locals 1

    .line 432
    iget v0, p0, Landroidx/navigation/ActivityNavigator$Extras;->flags:I

    return v0
.end method
