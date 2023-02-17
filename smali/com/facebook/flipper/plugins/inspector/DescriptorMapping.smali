.class public final Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;
.super Ljava/lang/Object;
.source "DescriptorMapping.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;

    invoke-direct {v0}, Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;-><init>()V

    sput-object v0, Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;->INSTANCE:Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final withDefaults()Lcom/facebook/flipper/plugins/inspector/DescriptorMapping;
    .locals 0

    return-object p0
.end method
