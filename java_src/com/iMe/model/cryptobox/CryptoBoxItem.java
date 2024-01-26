package com.iMe.model.cryptobox;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxItem.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxItem extends NoChildNode {
    private final String chatAvatarUrl;
    private final long chatId;
    private final String chatName;
    private final String creationTimeText;
    private final String description;

    /* renamed from: id */
    private final String f290id;
    private final String name;
    private final int statusColorResId;
    private final String statusText;
    private final String tokenLogoUrl;

    public final String component1() {
        return this.f290id;
    }

    public final int component10() {
        return this.statusColorResId;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.description;
    }

    public final String component4() {
        return this.chatAvatarUrl;
    }

    public final long component5() {
        return this.chatId;
    }

    public final String component6() {
        return this.chatName;
    }

    public final String component7() {
        return this.tokenLogoUrl;
    }

    public final String component8() {
        return this.creationTimeText;
    }

    public final String component9() {
        return this.statusText;
    }

    public final CryptoBoxItem copy(String id, String name, String description, String chatAvatarUrl, long j, String chatName, String tokenLogoUrl, String creationTimeText, String statusText, int i) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(chatAvatarUrl, "chatAvatarUrl");
        Intrinsics.checkNotNullParameter(chatName, "chatName");
        Intrinsics.checkNotNullParameter(tokenLogoUrl, "tokenLogoUrl");
        Intrinsics.checkNotNullParameter(creationTimeText, "creationTimeText");
        Intrinsics.checkNotNullParameter(statusText, "statusText");
        return new CryptoBoxItem(id, name, description, chatAvatarUrl, j, chatName, tokenLogoUrl, creationTimeText, statusText, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxItem) {
            CryptoBoxItem cryptoBoxItem = (CryptoBoxItem) obj;
            return Intrinsics.areEqual(this.f290id, cryptoBoxItem.f290id) && Intrinsics.areEqual(this.name, cryptoBoxItem.name) && Intrinsics.areEqual(this.description, cryptoBoxItem.description) && Intrinsics.areEqual(this.chatAvatarUrl, cryptoBoxItem.chatAvatarUrl) && this.chatId == cryptoBoxItem.chatId && Intrinsics.areEqual(this.chatName, cryptoBoxItem.chatName) && Intrinsics.areEqual(this.tokenLogoUrl, cryptoBoxItem.tokenLogoUrl) && Intrinsics.areEqual(this.creationTimeText, cryptoBoxItem.creationTimeText) && Intrinsics.areEqual(this.statusText, cryptoBoxItem.statusText) && this.statusColorResId == cryptoBoxItem.statusColorResId;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((((((this.f290id.hashCode() * 31) + this.name.hashCode()) * 31) + this.description.hashCode()) * 31) + this.chatAvatarUrl.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1020m(this.chatId)) * 31) + this.chatName.hashCode()) * 31) + this.tokenLogoUrl.hashCode()) * 31) + this.creationTimeText.hashCode()) * 31) + this.statusText.hashCode()) * 31) + this.statusColorResId;
    }

    public String toString() {
        return "CryptoBoxItem(id=" + this.f290id + ", name=" + this.name + ", description=" + this.description + ", chatAvatarUrl=" + this.chatAvatarUrl + ", chatId=" + this.chatId + ", chatName=" + this.chatName + ", tokenLogoUrl=" + this.tokenLogoUrl + ", creationTimeText=" + this.creationTimeText + ", statusText=" + this.statusText + ", statusColorResId=" + this.statusColorResId + ')';
    }

    public final String getId() {
        return this.f290id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getChatAvatarUrl() {
        return this.chatAvatarUrl;
    }

    public final long getChatId() {
        return this.chatId;
    }

    public final String getChatName() {
        return this.chatName;
    }

    public final String getTokenLogoUrl() {
        return this.tokenLogoUrl;
    }

    public final String getCreationTimeText() {
        return this.creationTimeText;
    }

    public final String getStatusText() {
        return this.statusText;
    }

    public final int getStatusColorResId() {
        return this.statusColorResId;
    }

    public CryptoBoxItem(String id, String name, String description, String chatAvatarUrl, long j, String chatName, String tokenLogoUrl, String creationTimeText, String statusText, int i) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(chatAvatarUrl, "chatAvatarUrl");
        Intrinsics.checkNotNullParameter(chatName, "chatName");
        Intrinsics.checkNotNullParameter(tokenLogoUrl, "tokenLogoUrl");
        Intrinsics.checkNotNullParameter(creationTimeText, "creationTimeText");
        Intrinsics.checkNotNullParameter(statusText, "statusText");
        this.f290id = id;
        this.name = name;
        this.description = description;
        this.chatAvatarUrl = chatAvatarUrl;
        this.chatId = j;
        this.chatName = chatName;
        this.tokenLogoUrl = tokenLogoUrl;
        this.creationTimeText = creationTimeText;
        this.statusText = statusText;
        this.statusColorResId = i;
    }
}
