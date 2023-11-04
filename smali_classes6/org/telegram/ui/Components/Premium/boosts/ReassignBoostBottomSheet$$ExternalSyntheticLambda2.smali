.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;->f$2:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;->f$2:Ljava/util/HashSet;

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->$r8$lambda$9ZKwywK0qb-jlB0XQz7br_kWmR4(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    return-void
.end method
