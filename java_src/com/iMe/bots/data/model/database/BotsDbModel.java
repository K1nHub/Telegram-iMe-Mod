package com.iMe.bots.data.model.database;

import com.iMe.bots.data.model.BotStatus;
import com.iMe.bots.data.model.BotType;
import com.iMe.bots.domain.model.BotLanguage;
import java.util.Date;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotsDbModel.kt */
/* loaded from: classes4.dex */
public final class BotsDbModel {
    private final String avatarOriginal;
    private final String avatarRounded;
    private final int botUpdated;
    private final Date created;
    private final String description;
    private final Map<String, String> descriptionLocales;
    private final String file;
    private final String hash;

    /* renamed from: id */
    private final String f331id;
    private final int installLogged;
    private final long installs;
    private final BotLanguage lang;
    private final int ownRating;
    private final long phrases;
    private final String price;
    private final long priority;
    private final float rating;
    private final long reviews;
    private final String sku;
    private final BotStatus status;
    private final List<String> tags;
    private final long themes;
    private final String title;
    private final Map<String, String> titleLocales;
    private final BotType type;
    private final Date updated;
    private final int useAssets;

    public final String component1() {
        return this.f331id;
    }

    public final long component10() {
        return this.installs;
    }

    public final long component11() {
        return this.priority;
    }

    public final long component12() {
        return this.reviews;
    }

    public final float component13() {
        return this.rating;
    }

    public final int component14() {
        return this.ownRating;
    }

    public final int component15() {
        return this.installLogged;
    }

    public final int component16() {
        return this.useAssets;
    }

    public final int component17() {
        return this.botUpdated;
    }

    public final List<String> component18() {
        return this.tags;
    }

    public final String component19() {
        return this.file;
    }

    public final String component2() {
        return this.sku;
    }

    public final String component20() {
        return this.hash;
    }

    public final long component21() {
        return this.phrases;
    }

    public final long component22() {
        return this.themes;
    }

    public final Date component23() {
        return this.created;
    }

    public final Date component24() {
        return this.updated;
    }

    public final String component25() {
        return this.price;
    }

    public final BotType component26() {
        return this.type;
    }

    public final BotStatus component27() {
        return this.status;
    }

    public final BotLanguage component3() {
        return this.lang;
    }

    public final String component4() {
        return this.avatarOriginal;
    }

    public final String component5() {
        return this.avatarRounded;
    }

    public final Map<String, String> component6() {
        return this.titleLocales;
    }

    public final Map<String, String> component7() {
        return this.descriptionLocales;
    }

    public final String component8() {
        return this.title;
    }

    public final String component9() {
        return this.description;
    }

    public final BotsDbModel copy(String id, String str, BotLanguage lang, String avatarOriginal, String avatarRounded, Map<String, String> titleLocales, Map<String, String> descriptionLocales, String title, String description, long j, long j2, long j3, float f, int i, int i2, int i3, int i4, List<String> tags, String file, String hash, long j4, long j5, Date created, Date updated, String str2, BotType type, BotStatus status) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(avatarOriginal, "avatarOriginal");
        Intrinsics.checkNotNullParameter(avatarRounded, "avatarRounded");
        Intrinsics.checkNotNullParameter(titleLocales, "titleLocales");
        Intrinsics.checkNotNullParameter(descriptionLocales, "descriptionLocales");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(updated, "updated");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        return new BotsDbModel(id, str, lang, avatarOriginal, avatarRounded, titleLocales, descriptionLocales, title, description, j, j2, j3, f, i, i2, i3, i4, tags, file, hash, j4, j5, created, updated, str2, type, status);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BotsDbModel) {
            BotsDbModel botsDbModel = (BotsDbModel) obj;
            return Intrinsics.areEqual(this.f331id, botsDbModel.f331id) && Intrinsics.areEqual(this.sku, botsDbModel.sku) && this.lang == botsDbModel.lang && Intrinsics.areEqual(this.avatarOriginal, botsDbModel.avatarOriginal) && Intrinsics.areEqual(this.avatarRounded, botsDbModel.avatarRounded) && Intrinsics.areEqual(this.titleLocales, botsDbModel.titleLocales) && Intrinsics.areEqual(this.descriptionLocales, botsDbModel.descriptionLocales) && Intrinsics.areEqual(this.title, botsDbModel.title) && Intrinsics.areEqual(this.description, botsDbModel.description) && this.installs == botsDbModel.installs && this.priority == botsDbModel.priority && this.reviews == botsDbModel.reviews && Float.compare(this.rating, botsDbModel.rating) == 0 && this.ownRating == botsDbModel.ownRating && this.installLogged == botsDbModel.installLogged && this.useAssets == botsDbModel.useAssets && this.botUpdated == botsDbModel.botUpdated && Intrinsics.areEqual(this.tags, botsDbModel.tags) && Intrinsics.areEqual(this.file, botsDbModel.file) && Intrinsics.areEqual(this.hash, botsDbModel.hash) && this.phrases == botsDbModel.phrases && this.themes == botsDbModel.themes && Intrinsics.areEqual(this.created, botsDbModel.created) && Intrinsics.areEqual(this.updated, botsDbModel.updated) && Intrinsics.areEqual(this.price, botsDbModel.price) && this.type == botsDbModel.type && this.status == botsDbModel.status;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f331id.hashCode() * 31;
        String str = this.sku;
        int hashCode2 = (((((((((((((((((((((((((((((((((((((((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.lang.hashCode()) * 31) + this.avatarOriginal.hashCode()) * 31) + this.avatarRounded.hashCode()) * 31) + this.titleLocales.hashCode()) * 31) + this.descriptionLocales.hashCode()) * 31) + this.title.hashCode()) * 31) + this.description.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.installs)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.priority)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.reviews)) * 31) + Float.floatToIntBits(this.rating)) * 31) + this.ownRating) * 31) + this.installLogged) * 31) + this.useAssets) * 31) + this.botUpdated) * 31) + this.tags.hashCode()) * 31) + this.file.hashCode()) * 31) + this.hash.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.phrases)) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m724m(this.themes)) * 31) + this.created.hashCode()) * 31) + this.updated.hashCode()) * 31;
        String str2 = this.price;
        return ((((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.type.hashCode()) * 31) + this.status.hashCode();
    }

    public String toString() {
        return "BotsDbModel(id=" + this.f331id + ", sku=" + this.sku + ", lang=" + this.lang + ", avatarOriginal=" + this.avatarOriginal + ", avatarRounded=" + this.avatarRounded + ", titleLocales=" + this.titleLocales + ", descriptionLocales=" + this.descriptionLocales + ", title=" + this.title + ", description=" + this.description + ", installs=" + this.installs + ", priority=" + this.priority + ", reviews=" + this.reviews + ", rating=" + this.rating + ", ownRating=" + this.ownRating + ", installLogged=" + this.installLogged + ", useAssets=" + this.useAssets + ", botUpdated=" + this.botUpdated + ", tags=" + this.tags + ", file=" + this.file + ", hash=" + this.hash + ", phrases=" + this.phrases + ", themes=" + this.themes + ", created=" + this.created + ", updated=" + this.updated + ", price=" + this.price + ", type=" + this.type + ", status=" + this.status + ')';
    }

    public BotsDbModel(String id, String str, BotLanguage lang, String avatarOriginal, String avatarRounded, Map<String, String> titleLocales, Map<String, String> descriptionLocales, String title, String description, long j, long j2, long j3, float f, int i, int i2, int i3, int i4, List<String> tags, String file, String hash, long j4, long j5, Date created, Date updated, String str2, BotType type, BotStatus status) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(lang, "lang");
        Intrinsics.checkNotNullParameter(avatarOriginal, "avatarOriginal");
        Intrinsics.checkNotNullParameter(avatarRounded, "avatarRounded");
        Intrinsics.checkNotNullParameter(titleLocales, "titleLocales");
        Intrinsics.checkNotNullParameter(descriptionLocales, "descriptionLocales");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(hash, "hash");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(updated, "updated");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        this.f331id = id;
        this.sku = str;
        this.lang = lang;
        this.avatarOriginal = avatarOriginal;
        this.avatarRounded = avatarRounded;
        this.titleLocales = titleLocales;
        this.descriptionLocales = descriptionLocales;
        this.title = title;
        this.description = description;
        this.installs = j;
        this.priority = j2;
        this.reviews = j3;
        this.rating = f;
        this.ownRating = i;
        this.installLogged = i2;
        this.useAssets = i3;
        this.botUpdated = i4;
        this.tags = tags;
        this.file = file;
        this.hash = hash;
        this.phrases = j4;
        this.themes = j5;
        this.created = created;
        this.updated = updated;
        this.price = str2;
        this.type = type;
        this.status = status;
    }

    public final String getId() {
        return this.f331id;
    }

    public final String getSku() {
        return this.sku;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ BotsDbModel(java.lang.String r37, java.lang.String r38, com.iMe.bots.domain.model.BotLanguage r39, java.lang.String r40, java.lang.String r41, java.util.Map r42, java.util.Map r43, java.lang.String r44, java.lang.String r45, long r46, long r48, long r50, float r52, int r53, int r54, int r55, int r56, java.util.List r57, java.lang.String r58, java.lang.String r59, long r60, long r62, java.util.Date r64, java.util.Date r65, java.lang.String r66, com.iMe.bots.data.model.BotType r67, com.iMe.bots.data.model.BotStatus r68, int r69, kotlin.jvm.internal.DefaultConstructorMarker r70) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.bots.data.model.database.BotsDbModel.<init>(java.lang.String, java.lang.String, com.iMe.bots.domain.model.BotLanguage, java.lang.String, java.lang.String, java.util.Map, java.util.Map, java.lang.String, java.lang.String, long, long, long, float, int, int, int, int, java.util.List, java.lang.String, java.lang.String, long, long, java.util.Date, java.util.Date, java.lang.String, com.iMe.bots.data.model.BotType, com.iMe.bots.data.model.BotStatus, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    public final BotLanguage getLang() {
        return this.lang;
    }

    public final String getAvatarOriginal() {
        return this.avatarOriginal;
    }

    public final String getAvatarRounded() {
        return this.avatarRounded;
    }

    public final Map<String, String> getTitleLocales() {
        return this.titleLocales;
    }

    public final Map<String, String> getDescriptionLocales() {
        return this.descriptionLocales;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final long getInstalls() {
        return this.installs;
    }

    public final long getPriority() {
        return this.priority;
    }

    public final long getReviews() {
        return this.reviews;
    }

    public final float getRating() {
        return this.rating;
    }

    public final int getOwnRating() {
        return this.ownRating;
    }

    public final int getInstallLogged() {
        return this.installLogged;
    }

    public final int getUseAssets() {
        return this.useAssets;
    }

    public final int getBotUpdated() {
        return this.botUpdated;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final String getFile() {
        return this.file;
    }

    public final String getHash() {
        return this.hash;
    }

    public final long getPhrases() {
        return this.phrases;
    }

    public final long getThemes() {
        return this.themes;
    }

    public final Date getCreated() {
        return this.created;
    }

    public final Date getUpdated() {
        return this.updated;
    }

    public final String getPrice() {
        return this.price;
    }

    public final BotType getType() {
        return this.type;
    }

    public final BotStatus getStatus() {
        return this.status;
    }
}
