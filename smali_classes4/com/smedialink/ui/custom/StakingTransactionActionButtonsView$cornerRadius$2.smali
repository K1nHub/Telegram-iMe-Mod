.class final Lcom/smedialink/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingTransactionActionButtonsView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/custom/StakingTransactionActionButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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


# static fields
.field public static final INSTANCE:Lcom/smedialink/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;

    invoke-direct {v0}, Lcom/smedialink/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;-><init>()V

    sput-object v0, Lcom/smedialink/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;->INSTANCE:Lcom/smedialink/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    .line 24
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/StakingTransactionActionButtonsView$cornerRadius$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
