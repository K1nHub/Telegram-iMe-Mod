package com.iMe.fork.models;

import com.google.gson.annotations.SerializedName;
import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Changelog.kt */
/* loaded from: classes3.dex */
public final class Changelog {
    @SerializedName("current_date")
    public final long currentDate;
    @SerializedName("en_changelog")
    public final String enChangelog;
    @SerializedName("ru_changelog")
    public final String ruChangelog;
    @SerializedName("sticker_index")
    public final int stickerIndex;
    @SerializedName("sticker_pack_name")
    public final String stickerPackName;

    public Changelog() {
        this(0L, null, null, null, 0, 31, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Changelog) {
            Changelog changelog = (Changelog) obj;
            return this.currentDate == changelog.currentDate && Intrinsics.areEqual(this.ruChangelog, changelog.ruChangelog) && Intrinsics.areEqual(this.enChangelog, changelog.enChangelog) && Intrinsics.areEqual(this.stickerPackName, changelog.stickerPackName) && this.stickerIndex == changelog.stickerIndex;
        }
        return false;
    }

    public int hashCode() {
        int m706m = BotsDbModel$$ExternalSyntheticBackport0.m706m(this.currentDate) * 31;
        String str = this.ruChangelog;
        int hashCode = (m706m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.enChangelog;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.stickerPackName;
        return ((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.stickerIndex;
    }

    public String toString() {
        return "Changelog(currentDate=" + this.currentDate + ", ruChangelog=" + this.ruChangelog + ", enChangelog=" + this.enChangelog + ", stickerPackName=" + this.stickerPackName + ", stickerIndex=" + this.stickerIndex + ')';
    }

    public Changelog(long j, String str, String str2, String str3, int i) {
        this.currentDate = j;
        this.ruChangelog = str;
        this.enChangelog = str2;
        this.stickerPackName = str3;
        this.stickerIndex = i;
    }

    public /* synthetic */ Changelog(long j, String str, String str2, String str3, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? 0 : i);
    }
}
