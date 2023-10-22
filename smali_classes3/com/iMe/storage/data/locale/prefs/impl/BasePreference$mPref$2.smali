.class final Lcom/iMe/storage/data/locale/prefs/impl/BasePreference$mPref$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/gateway/TelegramGateway;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference$mPref$2;->this$0:Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference$mPref$2;->this$0:Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;

    invoke-static {v0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->access$getContext$p(Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;)Landroid/content/Context;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference$mPref$2;->this$0:Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;

    invoke-static {v1}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;->access$getPrefName$p(Lcom/iMe/storage/data/locale/prefs/impl/BasePreference;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/prefs/impl/BasePreference$mPref$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
