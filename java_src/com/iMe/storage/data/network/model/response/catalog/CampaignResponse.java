package com.iMe.storage.data.network.model.response.catalog;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CampaignResponse.kt */
/* loaded from: classes3.dex */
public final class CampaignResponse {
    private final CatalogCategoryResponse category;
    private final ChannelResponse channel;
    private final List<ChannelCountryResponse> countries;
    private final String createdAt;

    /* renamed from: id */
    private final long f315id;
    private final String invalidReason;
    private final CatalogLanguageResponse language;
    private final String status;
    private final List<ChannelTagResponse> tags;

    public final CatalogCategoryResponse component1() {
        return this.category;
    }

    public final ChannelResponse component2() {
        return this.channel;
    }

    public final List<ChannelCountryResponse> component3() {
        return this.countries;
    }

    public final String component4() {
        return this.createdAt;
    }

    public final long component5() {
        return this.f315id;
    }

    public final String component6() {
        return this.invalidReason;
    }

    public final CatalogLanguageResponse component7() {
        return this.language;
    }

    public final String component8() {
        return this.status;
    }

    public final List<ChannelTagResponse> component9() {
        return this.tags;
    }

    public final CampaignResponse copy(CatalogCategoryResponse category, ChannelResponse channel, List<ChannelCountryResponse> countries, String createdAt, long j, String str, CatalogLanguageResponse language, String status, List<ChannelTagResponse> tags) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(countries, "countries");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new CampaignResponse(category, channel, countries, createdAt, j, str, language, status, tags);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CampaignResponse) {
            CampaignResponse campaignResponse = (CampaignResponse) obj;
            return Intrinsics.areEqual(this.category, campaignResponse.category) && Intrinsics.areEqual(this.channel, campaignResponse.channel) && Intrinsics.areEqual(this.countries, campaignResponse.countries) && Intrinsics.areEqual(this.createdAt, campaignResponse.createdAt) && this.f315id == campaignResponse.f315id && Intrinsics.areEqual(this.invalidReason, campaignResponse.invalidReason) && Intrinsics.areEqual(this.language, campaignResponse.language) && Intrinsics.areEqual(this.status, campaignResponse.status) && Intrinsics.areEqual(this.tags, campaignResponse.tags);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((((((this.category.hashCode() * 31) + this.channel.hashCode()) * 31) + this.countries.hashCode()) * 31) + this.createdAt.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.f315id)) * 31;
        String str = this.invalidReason;
        return ((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.language.hashCode()) * 31) + this.status.hashCode()) * 31) + this.tags.hashCode();
    }

    public String toString() {
        return "CampaignResponse(category=" + this.category + ", channel=" + this.channel + ", countries=" + this.countries + ", createdAt=" + this.createdAt + ", id=" + this.f315id + ", invalidReason=" + this.invalidReason + ", language=" + this.language + ", status=" + this.status + ", tags=" + this.tags + ')';
    }

    public CampaignResponse(CatalogCategoryResponse category, ChannelResponse channel, List<ChannelCountryResponse> countries, String createdAt, long j, String str, CatalogLanguageResponse language, String status, List<ChannelTagResponse> tags) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(countries, "countries");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.category = category;
        this.channel = channel;
        this.countries = countries;
        this.createdAt = createdAt;
        this.f315id = j;
        this.invalidReason = str;
        this.language = language;
        this.status = status;
        this.tags = tags;
    }

    public final CatalogCategoryResponse getCategory() {
        return this.category;
    }

    public final ChannelResponse getChannel() {
        return this.channel;
    }

    public final List<ChannelCountryResponse> getCountries() {
        return this.countries;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final long getId() {
        return this.f315id;
    }

    public final String getInvalidReason() {
        return this.invalidReason;
    }

    public final CatalogLanguageResponse getLanguage() {
        return this.language;
    }

    public final String getStatus() {
        return this.status;
    }

    public final List<ChannelTagResponse> getTags() {
        return this.tags;
    }
}
