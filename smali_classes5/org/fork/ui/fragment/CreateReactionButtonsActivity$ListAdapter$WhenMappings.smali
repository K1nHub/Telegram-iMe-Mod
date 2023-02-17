.class public final synthetic Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$WhenMappings;
.super Ljava/lang/Object;
.source "CreateReactionButtonsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->values()[Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;->EMOJI:Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ColumnType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
