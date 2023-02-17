.class public final synthetic Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$RegionCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/CharSequence;II)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$$ExternalSyntheticLambda3;->f$2:Ljava/util/ArrayList;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->$r8$lambda$gA7OZy6edgEi1hbrS3D4n4iBH88(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/CharSequence;II)V

    return-void
.end method
