package com.iMe.storage.domain.model.crypto.level;

import com.google.android.exoplayer2.audio.AacUtil;
import com.iMe.storage.R$color;
import com.iMe.storage.R$string;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AccountLevel.kt */
/* loaded from: classes4.dex */
public enum AccountLevel {
    ZERO(R$color.account_level_zero, R$string.wallet_account_level_zero_description, 0),
    BASE(R$color.account_level_base, R$string.wallet_account_level_base_description, 1),
    FAN(R$color.account_level_fan, R$string.wallet_account_level_fan_description, 10000),
    BOSS(R$color.account_level_boss, R$string.wallet_account_level_boss_description, AacUtil.AAC_LC_MAX_RATE_BYTES_PER_SECOND),
    ADVISER(R$color.account_level_adviser, R$string.wallet_account_level_adviser_description, 1000000),
    ORACLE(R$color.account_level_oracle, R$string.wallet_account_level_oracle_description, 10000000);
    
    public static final Companion Companion = new Companion(null);
    private final int colorResId;
    private final int descriptionResId;
    private final int minThreshold;

    /* compiled from: AccountLevel.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AccountLevel.values().length];
            try {
                iArr[AccountLevel.ORACLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    AccountLevel(int i, int i2, int i3) {
        this.colorResId = i;
        this.descriptionResId = i2;
        this.minThreshold = i3;
    }

    public final int getColorResId() {
        return this.colorResId;
    }

    public final int getDescriptionResId() {
        return this.descriptionResId;
    }

    public final boolean isReached(AccountLevel userAccountLevel) {
        Intrinsics.checkNotNullParameter(userAccountLevel, "userAccountLevel");
        return userAccountLevel.minThreshold >= this.minThreshold;
    }

    public final String getFullDescription(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        if (WhenMappings.$EnumSwitchMapping$0[ordinal()] == 1) {
            return resourceManager.getString(this.descriptionResId);
        }
        return "= " + resourceManager.getString(this.descriptionResId);
    }

    /* compiled from: AccountLevel.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AccountLevel map(String value) {
            AccountLevel accountLevel;
            Intrinsics.checkNotNullParameter(value, "value");
            AccountLevel[] values = AccountLevel.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    accountLevel = null;
                    break;
                }
                accountLevel = values[i];
                if (Intrinsics.areEqual(accountLevel.name(), value)) {
                    break;
                }
                i++;
            }
            return accountLevel == null ? AccountLevel.ZERO : accountLevel;
        }
    }
}
