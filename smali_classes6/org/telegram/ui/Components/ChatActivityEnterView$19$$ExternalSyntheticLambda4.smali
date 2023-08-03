.class public final synthetic Lorg/telegram/ui/Components/ChatActivityEnterView$19$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$19$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/ChatActivityEnterView$19$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$19$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/ChatActivityEnterView$19$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/ChatActivityEnterView$19$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$19;->$r8$lambda$HU26IQuOyd3GTTA5nXERiPkkHvE(ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
