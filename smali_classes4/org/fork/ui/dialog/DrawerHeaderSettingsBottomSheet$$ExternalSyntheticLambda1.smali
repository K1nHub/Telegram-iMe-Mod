.class public final synthetic Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ZLorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1;->f$1:Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    iput p3, p0, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1;->f$0:Z

    iget-object v1, p0, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1;->f$1:Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;

    iget v2, p0, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Lcom/smedialink/ui/drawer/DrawerAccountData;

    invoke-static {v0, v1, v2, p1}, Lorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;->$r8$lambda$OEIFnnLSDMgwFWKJLBuWGIVIwLw(ZLorg/fork/ui/dialog/DrawerHeaderSettingsBottomSheet;ILcom/smedialink/ui/drawer/DrawerAccountData;)V

    return-void
.end method
