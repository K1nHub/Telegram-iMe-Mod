.class public final Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;
.super Ljava/lang/Object;
.source "LoadMoreModule.kt"


# static fields
.field private static defLoadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;-><init>()V

    .line 31
    new-instance v0, Lcom/chad/library/adapter/base/loadmore/SimpleLoadMoreView;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/loadmore/SimpleLoadMoreView;-><init>()V

    sput-object v0, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;->defLoadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefLoadMoreView()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;
    .locals 1

    .line 31
    sget-object v0, Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;->defLoadMoreView:Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;

    return-object v0
.end method
