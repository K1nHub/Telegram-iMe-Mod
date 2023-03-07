.class public final synthetic Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;

.field public final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda1;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda1;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$$ExternalSyntheticLambda1;->f$1:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->$r8$lambda$dZTp0tXaYo6qiPdIxk8B8ICYD7s(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    return-void
.end method
