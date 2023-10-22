package com.iMe.storage.data.locale.prefs.model;

import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountLevelMetadata.kt */
/* loaded from: classes3.dex */
public final class AccountLevelMetadata {
    private final int daysDuration;
    private final AccountLevel level;

    public AccountLevelMetadata() {
        this(null, 0, 3, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountLevelMetadata) {
            AccountLevelMetadata accountLevelMetadata = (AccountLevelMetadata) obj;
            return this.level == accountLevelMetadata.level && this.daysDuration == accountLevelMetadata.daysDuration;
        }
        return false;
    }

    public int hashCode() {
        return (this.level.hashCode() * 31) + this.daysDuration;
    }

    public String toString() {
        return "AccountLevelMetadata(level=" + this.level + ", daysDuration=" + this.daysDuration + ')';
    }

    public AccountLevelMetadata(AccountLevel level, int i) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.level = level;
        this.daysDuration = i;
    }

    public /* synthetic */ AccountLevelMetadata(AccountLevel accountLevel, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? AccountLevel.ZERO : accountLevel, (i2 & 2) != 0 ? 0 : i);
    }

    public final AccountLevel getLevel() {
        return this.level;
    }
}
