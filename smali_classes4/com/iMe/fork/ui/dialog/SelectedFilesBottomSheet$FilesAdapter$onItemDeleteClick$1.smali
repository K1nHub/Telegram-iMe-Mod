.class final Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectedFilesBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter;-><init>(Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;

    invoke-direct {v0}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;-><init>()V

    sput-object v0, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;->INSTANCE:Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;

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

    .line 500
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/fork/ui/dialog/SelectedFilesBottomSheet$FilesAdapter$onItemDeleteClick$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 0

    return-void
.end method
