.class final Lcom/iMe/ui/custom/ChooseRecipientOptionsView$backgroundColor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ChooseRecipientOptionsView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/custom/ChooseRecipientOptionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/custom/ChooseRecipientOptionsView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/custom/ChooseRecipientOptionsView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$backgroundColor$2;->this$0:Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$backgroundColor$2;->this$0:Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0, v1}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->access$getColorWithDefaultAlpha(Lcom/iMe/ui/custom/ChooseRecipientOptionsView;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView$backgroundColor$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
