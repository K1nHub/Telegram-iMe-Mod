.class public final synthetic Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Adapters/BaseLocationAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseLocationAdapter$$ExternalSyntheticLambda1;->f$2:Landroid/location/Location;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->$r8$lambda$M5pEnfvG1qE0SmAACEhWNyquPlU(Lorg/telegram/ui/Adapters/BaseLocationAdapter;Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method
