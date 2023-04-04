.class final Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentUser$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DrawerHeaderSettingsBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/telegram/tgnet/TLRPC$User;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentUser$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentUser$2;

    invoke-direct {v0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentUser$2;-><init>()V

    sput-object v0, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentUser$2;->INSTANCE:Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentUser$2;

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

    .line 34
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$currentUser$2;->invoke()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 34
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    return-object v0
.end method
