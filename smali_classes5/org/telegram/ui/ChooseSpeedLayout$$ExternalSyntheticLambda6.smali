.class public final synthetic Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChooseSpeedLayout$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChooseSpeedLayout$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ChooseSpeedLayout$Callback;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChooseSpeedLayout$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ChooseSpeedLayout$Callback;

    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ChooseSpeedLayout;->$r8$lambda$_Gv52FCaa4MrnpEfRcQDk3adsxk(Lorg/telegram/ui/ChooseSpeedLayout$Callback;Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-void
.end method
