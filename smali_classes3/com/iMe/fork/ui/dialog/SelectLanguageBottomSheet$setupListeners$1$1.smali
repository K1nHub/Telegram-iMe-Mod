.class public final Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$setupListeners$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SelectLanguageBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$setupListeners$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    .line 181
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet$setupListeners$1$1;->this$0:Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;->access$updateLayout(Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;)V

    return-void
.end method
