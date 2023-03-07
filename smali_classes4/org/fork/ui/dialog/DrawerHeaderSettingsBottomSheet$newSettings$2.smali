.class final Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$newSettings$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DrawerHeaderSettingsBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/fork/models/DrawerHeaderSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$newSettings$2;->this$0:Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$newSettings$2;->invoke()Lorg/fork/models/DrawerHeaderSettings;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fork/models/DrawerHeaderSettings;
    .locals 10

    .line 36
    iget-object v0, p0, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$newSettings$2;->this$0:Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->access$getCurrentSettings(Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;)Lorg/fork/models/DrawerHeaderSettings;

    move-result-object v1

    const-string v0, "currentSettings"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lorg/fork/models/DrawerHeaderSettings;->copy$default(Lorg/fork/models/DrawerHeaderSettings;Lcom/smedialink/ui/drawer/DrawerAccountData;Lcom/smedialink/ui/drawer/DrawerAccountData;ZZZZILjava/lang/Object;)Lorg/fork/models/DrawerHeaderSettings;

    move-result-object v0

    return-object v0
.end method
