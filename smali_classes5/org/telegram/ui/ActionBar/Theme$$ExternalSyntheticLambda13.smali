.class public final synthetic Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Runnable;

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->$r8$lambda$jdxJa8vB5enhbFcOdJH7Vdg-3-8(Ljava/lang/Runnable;Ljava/util/HashMap;)V

    return-void
.end method
