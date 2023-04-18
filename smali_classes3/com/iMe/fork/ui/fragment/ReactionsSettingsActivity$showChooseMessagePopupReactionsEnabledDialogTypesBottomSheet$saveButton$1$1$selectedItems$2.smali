.class final Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReactionsSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity;->showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet()V
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
        "Lcom/iMe/fork/enums/DialogType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;

    invoke-direct {v0}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;-><init>()V

    sput-object v0, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;->INSTANCE:Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/telegram/ui/Cells/TextCheckBoxCell;)Lcom/iMe/fork/enums/DialogType;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.enums.DialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/enums/DialogType;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckBoxCell;

    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/fragment/ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2;->invoke(Lorg/telegram/ui/Cells/TextCheckBoxCell;)Lcom/iMe/fork/enums/DialogType;

    move-result-object p1

    return-object p1
.end method
