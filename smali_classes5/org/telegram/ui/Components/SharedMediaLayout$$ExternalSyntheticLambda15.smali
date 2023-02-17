.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda15;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    check-cast p2, Lorg/telegram/ui/Components/SharedMediaLayout$Period;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->$r8$lambda$Nma3Qcdlq5OXLEG_mV8bCEf-WHM(Lorg/telegram/ui/Components/SharedMediaLayout$Period;Lorg/telegram/ui/Components/SharedMediaLayout$Period;)I

    move-result p1

    return p1
.end method
