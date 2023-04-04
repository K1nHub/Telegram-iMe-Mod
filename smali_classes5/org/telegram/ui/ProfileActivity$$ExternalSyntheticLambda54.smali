.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda54;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda54;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda54;->f$1:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda54;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda54;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$WFeQ1dbbIWZLGe-_aqEtgQxOgvg(Lorg/telegram/ui/ProfileActivity;ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
