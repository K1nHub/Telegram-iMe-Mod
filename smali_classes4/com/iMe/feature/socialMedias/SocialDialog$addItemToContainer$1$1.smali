.class final Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SocialDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/SocialDialog;->addItemToContainer(Lcom/iMe/feature/socialMedias/SocialNetwork;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocialDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocialDialog.kt\ncom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/feature/socialMedias/SocialNetwork;

.field final synthetic $onNetworkChosen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iMe/feature/socialMedias/SocialDialog;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/feature/socialMedias/SocialDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lcom/iMe/feature/socialMedias/SocialDialog;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;->$onNetworkChosen:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;->$item:Lcom/iMe/feature/socialMedias/SocialNetwork;

    iput-object p3, p0, Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;->this$0:Lcom/iMe/feature/socialMedias/SocialDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;->$onNetworkChosen:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;->$item:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p1, p0, Lcom/iMe/feature/socialMedias/SocialDialog$addItemToContainer$1$1;->this$0:Lcom/iMe/feature/socialMedias/SocialDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method
