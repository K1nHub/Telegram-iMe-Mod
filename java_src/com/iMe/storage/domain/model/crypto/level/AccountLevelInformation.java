package com.iMe.storage.domain.model.crypto.level;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountLevelInformation.kt */
/* loaded from: classes4.dex */
public final class AccountLevelInformation {
    private final boolean isOwnLevel;
    private boolean isPublic;
    private final AccountLevel level;

    public static /* synthetic */ AccountLevelInformation copy$default(AccountLevelInformation accountLevelInformation, AccountLevel accountLevel, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            accountLevel = accountLevelInformation.level;
        }
        if ((i & 2) != 0) {
            z = accountLevelInformation.isPublic;
        }
        if ((i & 4) != 0) {
            z2 = accountLevelInformation.isOwnLevel;
        }
        return accountLevelInformation.copy(accountLevel, z, z2);
    }

    public final AccountLevel component1() {
        return this.level;
    }

    public final boolean component2() {
        return this.isPublic;
    }

    public final boolean component3() {
        return this.isOwnLevel;
    }

    public final AccountLevelInformation copy(AccountLevel level, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(level, "level");
        return new AccountLevelInformation(level, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccountLevelInformation) {
            AccountLevelInformation accountLevelInformation = (AccountLevelInformation) obj;
            return this.level == accountLevelInformation.level && this.isPublic == accountLevelInformation.isPublic && this.isOwnLevel == accountLevelInformation.isOwnLevel;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.level.hashCode() * 31;
        boolean z = this.isPublic;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.isOwnLevel;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "AccountLevelInformation(level=" + this.level + ", isPublic=" + this.isPublic + ", isOwnLevel=" + this.isOwnLevel + ')';
    }

    public AccountLevelInformation(AccountLevel level, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.level = level;
        this.isPublic = z;
        this.isOwnLevel = z2;
    }

    public /* synthetic */ AccountLevelInformation(AccountLevel accountLevel, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(accountLevel, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
    }

    public final AccountLevel getLevel() {
        return this.level;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final void setPublic(boolean z) {
        this.isPublic = z;
    }

    public final boolean isOwnLevel() {
        return this.isOwnLevel;
    }
}
