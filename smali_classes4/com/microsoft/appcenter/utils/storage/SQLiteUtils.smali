.class public Lcom/microsoft/appcenter/utils/storage/SQLiteUtils;
.super Ljava/lang/Object;
.source "SQLiteUtils.java"


# direct methods
.method public static newSQLiteQueryBuilder()Landroid/database/sqlite/SQLiteQueryBuilder;
    .locals 1

    .line 15
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    return-object v0
.end method
