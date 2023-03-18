package com.smedialink.bots.domain.model;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import com.smedialink.bots.data.model.BotStatus;
import com.smedialink.bots.data.model.BotType;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ShopItem.kt */
/* loaded from: classes3.dex */
public final class ShopItem {
    private final String avatar;
    private final String botId;
    private final String created;
    private final String description;
    private final String downloadLink;
    private final long installs;
    private final BotLanguage language;
    private final int ownRating;
    private final long phrases;
    private final String price;
    private final long priority;
    private final float rating;
    private final long reviews;
    private final String sku;
    private final BotStatus status;
    private final List<SmartTag> tags;
    private final long themes;
    private final String title;
    private final BotType type;
    private final String updated;

    public final String component1() {
        return this.botId;
    }

    public final float component10() {
        return this.rating;
    }

    public final int component11() {
        return this.ownRating;
    }

    public final long component12() {
        return this.phrases;
    }

    public final long component13() {
        return this.themes;
    }

    public final String component14() {
        return this.created;
    }

    public final String component15() {
        return this.updated;
    }

    public final List<SmartTag> component16() {
        return this.tags;
    }

    public final String component17() {
        return this.price;
    }

    public final String component18() {
        return this.downloadLink;
    }

    public final BotType component19() {
        return this.type;
    }

    public final String component2() {
        return this.sku;
    }

    public final BotStatus component20() {
        return this.status;
    }

    public final String component3() {
        return this.avatar;
    }

    public final BotLanguage component4() {
        return this.language;
    }

    public final String component5() {
        return this.title;
    }

    public final String component6() {
        return this.description;
    }

    public final long component7() {
        return this.installs;
    }

    public final long component8() {
        return this.priority;
    }

    public final long component9() {
        return this.reviews;
    }

    public final ShopItem copy(String botId, String str, String avatar, BotLanguage language, String title, String description, long j, long j2, long j3, float f, int i, long j4, long j5, String created, String updated, List<SmartTag> tags, String str2, String downloadLink, BotType type, BotStatus status) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(updated, "updated");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(downloadLink, "downloadLink");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        return new ShopItem(botId, str, avatar, language, title, description, j, j2, j3, f, i, j4, j5, created, updated, tags, str2, downloadLink, type, status);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShopItem) {
            ShopItem shopItem = (ShopItem) obj;
            return Intrinsics.areEqual(this.botId, shopItem.botId) && Intrinsics.areEqual(this.sku, shopItem.sku) && Intrinsics.areEqual(this.avatar, shopItem.avatar) && this.language == shopItem.language && Intrinsics.areEqual(this.title, shopItem.title) && Intrinsics.areEqual(this.description, shopItem.description) && this.installs == shopItem.installs && this.priority == shopItem.priority && this.reviews == shopItem.reviews && Float.compare(this.rating, shopItem.rating) == 0 && this.ownRating == shopItem.ownRating && this.phrases == shopItem.phrases && this.themes == shopItem.themes && Intrinsics.areEqual(this.created, shopItem.created) && Intrinsics.areEqual(this.updated, shopItem.updated) && Intrinsics.areEqual(this.tags, shopItem.tags) && Intrinsics.areEqual(this.price, shopItem.price) && Intrinsics.areEqual(this.downloadLink, shopItem.downloadLink) && this.type == shopItem.type && this.status == shopItem.status;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.botId.hashCode() * 31;
        String str = this.sku;
        int hashCode2 = (((((((((((((((((((((((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.avatar.hashCode()) * 31) + this.language.hashCode()) * 31) + this.title.hashCode()) * 31) + this.description.hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.installs)) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.priority)) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.reviews)) * 31) + Float.floatToIntBits(this.rating)) * 31) + this.ownRating) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.phrases)) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.themes)) * 31) + this.created.hashCode()) * 31) + this.updated.hashCode()) * 31) + this.tags.hashCode()) * 31;
        String str2 = this.price;
        return ((((((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.downloadLink.hashCode()) * 31) + this.type.hashCode()) * 31) + this.status.hashCode();
    }

    public String toString() {
        return "ShopItem(botId=" + this.botId + ", sku=" + this.sku + ", avatar=" + this.avatar + ", language=" + this.language + ", title=" + this.title + ", description=" + this.description + ", installs=" + this.installs + ", priority=" + this.priority + ", reviews=" + this.reviews + ", rating=" + this.rating + ", ownRating=" + this.ownRating + ", phrases=" + this.phrases + ", themes=" + this.themes + ", created=" + this.created + ", updated=" + this.updated + ", tags=" + this.tags + ", price=" + this.price + ", downloadLink=" + this.downloadLink + ", type=" + this.type + ", status=" + this.status + ')';
    }

    public ShopItem(String botId, String str, String avatar, BotLanguage language, String title, String description, long j, long j2, long j3, float f, int i, long j4, long j5, String created, String updated, List<SmartTag> tags, String str2, String downloadLink, BotType type, BotStatus status) {
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(updated, "updated");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(downloadLink, "downloadLink");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        this.botId = botId;
        this.sku = str;
        this.avatar = avatar;
        this.language = language;
        this.title = title;
        this.description = description;
        this.installs = j;
        this.priority = j2;
        this.reviews = j3;
        this.rating = f;
        this.ownRating = i;
        this.phrases = j4;
        this.themes = j5;
        this.created = created;
        this.updated = updated;
        this.tags = tags;
        this.price = str2;
        this.downloadLink = downloadLink;
        this.type = type;
        this.status = status;
    }

    public final String getBotId() {
        return this.botId;
    }

    public final String getSku() {
        return this.sku;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final BotLanguage getLanguage() {
        return this.language;
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

    public final long getPhrases() {
        return this.phrases;
    }

    public final long getThemes() {
        return this.themes;
    }

    public final String getCreated() {
        return this.created;
    }

    public final String getUpdated() {
        return this.updated;
    }

    public final List<SmartTag> getTags() {
        return this.tags;
    }

    public final String getPrice() {
        return this.price;
    }

    public final String getDownloadLink() {
        return this.downloadLink;
    }

    public final BotType getType() {
        return this.type;
    }

    public final BotStatus getStatus() {
        return this.status;
    }

    public final String getSearchField() {
        return this.title + this.description;
    }
}
