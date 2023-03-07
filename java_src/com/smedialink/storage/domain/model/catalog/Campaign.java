package com.smedialink.storage.domain.model.catalog;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Campaign.kt */
/* loaded from: classes3.dex */
public final class Campaign {
    private final CatalogCategory category;
    private final Channel channel;
    private final List<ChannelCountry> countries;
    private final String createdAt;

    /* renamed from: id */
    private final long f312id;
    private final String invalidReason;
    private final CatalogLanguage language;
    private final CampaignStatus status;
    private final List<ChannelTag> tags;

    public final CatalogCategory component1() {
        return this.category;
    }

    public final Channel component2() {
        return this.channel;
    }

    public final List<ChannelCountry> component3() {
        return this.countries;
    }

    public final String component4() {
        return this.createdAt;
    }

    public final long component5() {
        return this.f312id;
    }

    public final String component6() {
        return this.invalidReason;
    }

    public final CatalogLanguage component7() {
        return this.language;
    }

    public final CampaignStatus component8() {
        return this.status;
    }

    public final List<ChannelTag> component9() {
        return this.tags;
    }

    public final Campaign copy(CatalogCategory category, Channel channel, List<ChannelCountry> countries, String createdAt, long j, String invalidReason, CatalogLanguage language, CampaignStatus status, List<ChannelTag> tags) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(countries, "countries");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(invalidReason, "invalidReason");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new Campaign(category, channel, countries, createdAt, j, invalidReason, language, status, tags);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Campaign) {
            Campaign campaign = (Campaign) obj;
            return Intrinsics.areEqual(this.category, campaign.category) && Intrinsics.areEqual(this.channel, campaign.channel) && Intrinsics.areEqual(this.countries, campaign.countries) && Intrinsics.areEqual(this.createdAt, campaign.createdAt) && this.f312id == campaign.f312id && Intrinsics.areEqual(this.invalidReason, campaign.invalidReason) && Intrinsics.areEqual(this.language, campaign.language) && this.status == campaign.status && Intrinsics.areEqual(this.tags, campaign.tags);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((this.category.hashCode() * 31) + this.channel.hashCode()) * 31) + this.countries.hashCode()) * 31) + this.createdAt.hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.f312id)) * 31) + this.invalidReason.hashCode()) * 31) + this.language.hashCode()) * 31) + this.status.hashCode()) * 31) + this.tags.hashCode();
    }

    public String toString() {
        return "Campaign(category=" + this.category + ", channel=" + this.channel + ", countries=" + this.countries + ", createdAt=" + this.createdAt + ", id=" + this.f312id + ", invalidReason=" + this.invalidReason + ", language=" + this.language + ", status=" + this.status + ", tags=" + this.tags + ')';
    }

    public Campaign(CatalogCategory category, Channel channel, List<ChannelCountry> countries, String createdAt, long j, String invalidReason, CatalogLanguage language, CampaignStatus status, List<ChannelTag> tags) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(countries, "countries");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(invalidReason, "invalidReason");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.category = category;
        this.channel = channel;
        this.countries = countries;
        this.createdAt = createdAt;
        this.f312id = j;
        this.invalidReason = invalidReason;
        this.language = language;
        this.status = status;
        this.tags = tags;
    }

    public final CatalogCategory getCategory() {
        return this.category;
    }

    public final Channel getChannel() {
        return this.channel;
    }

    public final List<ChannelCountry> getCountries() {
        return this.countries;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final long getId() {
        return this.f312id;
    }

    public final String getInvalidReason() {
        return this.invalidReason;
    }

    public final CatalogLanguage getLanguage() {
        return this.language;
    }

    public final CampaignStatus getStatus() {
        return this.status;
    }

    public final List<ChannelTag> getTags() {
        return this.tags;
    }
}
