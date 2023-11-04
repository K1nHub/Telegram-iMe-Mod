package com.iMe.model.catalog;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.model.common.NoChildNode;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CampaignItem.kt */
/* loaded from: classes3.dex */
public final class CampaignItem extends NoChildNode {
    private final String category;
    private final String description;

    /* renamed from: id */
    private final long f282id;
    private final boolean isVerified;
    private final String language;
    private final long membersCount;
    private final String photo;
    private final String shortname;
    private final List<String> tags;
    private final String title;

    public final String component1() {
        return this.category;
    }

    public final String component10() {
        return this.title;
    }

    public final String component2() {
        return this.description;
    }

    public final long component3() {
        return this.f282id;
    }

    public final boolean component4() {
        return this.isVerified;
    }

    public final String component5() {
        return this.language;
    }

    public final long component6() {
        return this.membersCount;
    }

    public final String component7() {
        return this.photo;
    }

    public final String component8() {
        return this.shortname;
    }

    public final List<String> component9() {
        return this.tags;
    }

    public final CampaignItem copy(String category, String description, long j, boolean z, String language, long j2, String photo, String shortname, List<String> tags, String title) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(shortname, "shortname");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(title, "title");
        return new CampaignItem(category, description, j, z, language, j2, photo, shortname, tags, title);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CampaignItem) {
            CampaignItem campaignItem = (CampaignItem) obj;
            return Intrinsics.areEqual(this.category, campaignItem.category) && Intrinsics.areEqual(this.description, campaignItem.description) && this.f282id == campaignItem.f282id && this.isVerified == campaignItem.isVerified && Intrinsics.areEqual(this.language, campaignItem.language) && this.membersCount == campaignItem.membersCount && Intrinsics.areEqual(this.photo, campaignItem.photo) && Intrinsics.areEqual(this.shortname, campaignItem.shortname) && Intrinsics.areEqual(this.tags, campaignItem.tags) && Intrinsics.areEqual(this.title, campaignItem.title);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.category.hashCode() * 31) + this.description.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.f282id)) * 31;
        boolean z = this.isVerified;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((((((((((((hashCode + i) * 31) + this.language.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.membersCount)) * 31) + this.photo.hashCode()) * 31) + this.shortname.hashCode()) * 31) + this.tags.hashCode()) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "CampaignItem(category=" + this.category + ", description=" + this.description + ", id=" + this.f282id + ", isVerified=" + this.isVerified + ", language=" + this.language + ", membersCount=" + this.membersCount + ", photo=" + this.photo + ", shortname=" + this.shortname + ", tags=" + this.tags + ", title=" + this.title + ')';
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getDescription() {
        return this.description;
    }

    public final long getId() {
        return this.f282id;
    }

    public final boolean isVerified() {
        return this.isVerified;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final long getMembersCount() {
        return this.membersCount;
    }

    public final String getPhoto() {
        return this.photo;
    }

    public final String getShortname() {
        return this.shortname;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final String getTitle() {
        return this.title;
    }

    public CampaignItem(String category, String description, long j, boolean z, String language, long j2, String photo, String shortname, List<String> tags, String title) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(language, "language");
        Intrinsics.checkNotNullParameter(photo, "photo");
        Intrinsics.checkNotNullParameter(shortname, "shortname");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(title, "title");
        this.category = category;
        this.description = description;
        this.f282id = j;
        this.isVerified = z;
        this.language = language;
        this.membersCount = j2;
        this.photo = photo;
        this.shortname = shortname;
        this.tags = tags;
        this.title = title;
    }
}
