.class public Lcom/microsoft/appcenter/distribute/ReleaseDetails;
.super Ljava/lang/Object;
.source "ReleaseDetails.java"


# instance fields
.field private distributionGroupId:Ljava/lang/String;

.field private downloadUrl:Landroid/net/Uri;

.field private id:I

.field private mandatoryUpdate:Z

.field private minApiLevel:I

.field private releaseHash:Ljava/lang/String;

.field private releaseNotes:Ljava/lang/String;

.field private releaseNotesUrl:Landroid/net/Uri;

.field private shortVersion:Ljava/lang/String;

.field private size:J

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/microsoft/appcenter/distribute/ReleaseDetails;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;

    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/ReleaseDetails;-><init>()V

    const-string v1, "id"

    .line 113
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->id:I

    const-string/jumbo v1, "version"

    .line 114
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->version:I

    const-string/jumbo v1, "short_version"

    .line 115
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->shortVersion:Ljava/lang/String;

    const-string/jumbo v1, "size"

    .line 116
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->size:J

    const-string/jumbo v1, "release_notes"

    .line 117
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->releaseNotes:Ljava/lang/String;

    const-string/jumbo v1, "release_notes_url"

    .line 118
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->releaseNotesUrl:Landroid/net/Uri;

    const-string v1, "android_min_api_level"

    .line 119
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->minApiLevel:I

    const-string v1, "download_url"

    .line 120
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->downloadUrl:Landroid/net/Uri;

    .line 121
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "http"

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "mandatory_update"

    .line 125
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->mandatoryUpdate:Z

    const-string/jumbo v1, "package_hashes"

    .line 126
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->releaseHash:Ljava/lang/String;

    const-string v1, "distribution_group_id"

    .line 127
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->distributionGroupId:Ljava/lang/String;

    return-object p0

    .line 123
    :cond_3
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Invalid download_url scheme."

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDistributionGroupId()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->distributionGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Landroid/net/Uri;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->downloadUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->id:I

    return v0
.end method

.method getMinApiLevel()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->minApiLevel:I

    return v0
.end method

.method public getReleaseHash()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->releaseHash:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseNotes()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->releaseNotes:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseNotesUrl()Landroid/net/Uri;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->releaseNotesUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getShortVersion()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->shortVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->size:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->version:I

    return v0
.end method

.method public isMandatoryUpdate()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/microsoft/appcenter/distribute/ReleaseDetails;->mandatoryUpdate:Z

    return v0
.end method
