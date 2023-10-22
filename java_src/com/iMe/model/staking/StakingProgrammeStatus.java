package com.iMe.model.staking;

import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.Theme;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum SHORT_OF_FUNDS uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: StakingProgrammeStatus.kt */
/* loaded from: classes3.dex */
public final class StakingProgrammeStatus {
    private static final /* synthetic */ StakingProgrammeStatus[] $VALUES;
    public static final StakingProgrammeStatus CLOSED;
    public static final StakingProgrammeStatus SHORT_OF_FUNDS;
    private final int colorKey;
    private final int textResId;
    public static final StakingProgrammeStatus ACTIVE = new StakingProgrammeStatus("ACTIVE", 0, C3630R.string.staking_details_status_active, Theme.key_chat_inGreenCall);
    public static final StakingProgrammeStatus WITHDRAWAL_AVAILABLE = new StakingProgrammeStatus("WITHDRAWAL_AVAILABLE", 1, C3630R.string.staking_details_status_withdrawal_available, Theme.key_windowBackgroundWhiteBlueText);

    private static final /* synthetic */ StakingProgrammeStatus[] $values() {
        return new StakingProgrammeStatus[]{ACTIVE, WITHDRAWAL_AVAILABLE, SHORT_OF_FUNDS, CLOSED};
    }

    public static StakingProgrammeStatus valueOf(String str) {
        return (StakingProgrammeStatus) Enum.valueOf(StakingProgrammeStatus.class, str);
    }

    public static StakingProgrammeStatus[] values() {
        return (StakingProgrammeStatus[]) $VALUES.clone();
    }

    private StakingProgrammeStatus(String str, int i, int i2, int i3) {
        this.textResId = i2;
        this.colorKey = i3;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    public final int getColorKey() {
        return this.colorKey;
    }

    static {
        int i = C3630R.string.staking_details_status_short_of_funds;
        int i2 = Theme.key_text_RedRegular;
        SHORT_OF_FUNDS = new StakingProgrammeStatus("SHORT_OF_FUNDS", 2, i, i2);
        CLOSED = new StakingProgrammeStatus("CLOSED", 3, C3630R.string.staking_details_status_finished, i2);
        $VALUES = $values();
    }
}
