.class public final Lcom/iMe/feature/profile/ProfileSocialCell$updateState$lambda$7$lambda$6$lambda$5$$inlined$safeLongClick$1;
.super Ljava/lang/Object;
.source "ViewExt.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/profile/ProfileSocialCell;->updateState(Lcom/iMe/feature/profile/ProfileUiState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt$safeLongClick$1\n+ 2 ProfileSocialCell.kt\ncom/iMe/feature/profile/ProfileSocialCell\n*L\n1#1,360:1\n69#2:361\n*E\n"
.end annotation


# instance fields
.field final synthetic $network$inlined:Lcom/iMe/feature/socialMedias/SocialNetwork;

.field final synthetic $onNetworkLongClick$inlined:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$lambda$7$lambda$6$lambda$5$$inlined$safeLongClick$1;->$onNetworkLongClick$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$lambda$7$lambda$6$lambda$5$$inlined$safeLongClick$1;->$network$inlined:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$lambda$7$lambda$6$lambda$5$$inlined$safeLongClick$1;->$onNetworkLongClick$inlined:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/iMe/feature/profile/ProfileSocialCell$updateState$lambda$7$lambda$6$lambda$5$$inlined$safeLongClick$1;->$network$inlined:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
