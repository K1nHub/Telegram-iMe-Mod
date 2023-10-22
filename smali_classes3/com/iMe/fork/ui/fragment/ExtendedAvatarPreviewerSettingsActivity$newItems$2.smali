.class final Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExtendedAvatarPreviewerSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;

    invoke-direct {v0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;-><init>()V

    sput-object v0, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;->INSTANCE:Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$newItems$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    const-string v1, "selectedExtendedAvatarPreviewerItems"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
