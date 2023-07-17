.class public final Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$setupListeners$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "TokenListsBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$setupListeners$1;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    .line 146
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$setupListeners$1;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_0

    .line 150
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->INFO:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet$setupListeners$1;->this$0:Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;->access$getOnInfoClickAction$p(Lcom/iMe/fork/ui/dialog/TokenListsBottomSheet;)Lcom/iMe/fork/utils/Callbacks$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    :cond_1
    :goto_0
    return-void
.end method
