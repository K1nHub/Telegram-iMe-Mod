.class final Lorg/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReactionsSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/ReactionsSettingsActivity;->showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$lambda-17$lambda-16(Ljava/util/List;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;Lorg/fork/ui/fragment/ReactionsSettingsActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/Cells/TextCheckBoxCell;",
        "Lorg/fork/enums/DialogType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;

    invoke-direct {v0}, Lorg/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;-><init>()V

    sput-object v0, Lorg/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;->INSTANCE:Lorg/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 202
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {p0, p1}, Lorg/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;->invoke(Lorg/telegram/ui/Cells/TextCheckBoxCell;)Lorg/fork/enums/DialogType;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Cells/TextCheckBoxCell;)Lorg/fork/enums/DialogType;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.fork.enums.DialogType"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lorg/fork/enums/DialogType;

    return-object p1
.end method
