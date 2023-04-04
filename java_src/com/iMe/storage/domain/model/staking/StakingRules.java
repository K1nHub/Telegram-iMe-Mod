package com.iMe.storage.domain.model.staking;
/* compiled from: StakingRules.kt */
/* loaded from: classes3.dex */
public final class StakingRules {
    private final boolean canDeposit;
    private final boolean canWithdrawImmediately;
    private final boolean canWithdrawSafely;
    private final boolean immediateWithdrawalFeeTaken;
    private final boolean neededAllowanceForDeposit;
    private final boolean safeWithdrawalFeeTaken;

    public static /* synthetic */ StakingRules copy$default(StakingRules stakingRules, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i, Object obj) {
        if ((i & 1) != 0) {
            z = stakingRules.canDeposit;
        }
        if ((i & 2) != 0) {
            z2 = stakingRules.canWithdrawImmediately;
        }
        boolean z7 = z2;
        if ((i & 4) != 0) {
            z3 = stakingRules.canWithdrawSafely;
        }
        boolean z8 = z3;
        if ((i & 8) != 0) {
            z4 = stakingRules.immediateWithdrawalFeeTaken;
        }
        boolean z9 = z4;
        if ((i & 16) != 0) {
            z5 = stakingRules.safeWithdrawalFeeTaken;
        }
        boolean z10 = z5;
        if ((i & 32) != 0) {
            z6 = stakingRules.neededAllowanceForDeposit;
        }
        return stakingRules.copy(z, z7, z8, z9, z10, z6);
    }

    public final boolean component1() {
        return this.canDeposit;
    }

    public final boolean component2() {
        return this.canWithdrawImmediately;
    }

    public final boolean component3() {
        return this.canWithdrawSafely;
    }

    public final boolean component4() {
        return this.immediateWithdrawalFeeTaken;
    }

    public final boolean component5() {
        return this.safeWithdrawalFeeTaken;
    }

    public final boolean component6() {
        return this.neededAllowanceForDeposit;
    }

    public final StakingRules copy(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        return new StakingRules(z, z2, z3, z4, z5, z6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingRules) {
            StakingRules stakingRules = (StakingRules) obj;
            return this.canDeposit == stakingRules.canDeposit && this.canWithdrawImmediately == stakingRules.canWithdrawImmediately && this.canWithdrawSafely == stakingRules.canWithdrawSafely && this.immediateWithdrawalFeeTaken == stakingRules.immediateWithdrawalFeeTaken && this.safeWithdrawalFeeTaken == stakingRules.safeWithdrawalFeeTaken && this.neededAllowanceForDeposit == stakingRules.neededAllowanceForDeposit;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    public int hashCode() {
        boolean z = this.canDeposit;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        ?? r2 = this.canWithdrawImmediately;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int i3 = (i + i2) * 31;
        ?? r22 = this.canWithdrawSafely;
        int i4 = r22;
        if (r22 != 0) {
            i4 = 1;
        }
        int i5 = (i3 + i4) * 31;
        ?? r23 = this.immediateWithdrawalFeeTaken;
        int i6 = r23;
        if (r23 != 0) {
            i6 = 1;
        }
        int i7 = (i5 + i6) * 31;
        ?? r24 = this.safeWithdrawalFeeTaken;
        int i8 = r24;
        if (r24 != 0) {
            i8 = 1;
        }
        int i9 = (i7 + i8) * 31;
        boolean z2 = this.neededAllowanceForDeposit;
        return i9 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "StakingRules(canDeposit=" + this.canDeposit + ", canWithdrawImmediately=" + this.canWithdrawImmediately + ", canWithdrawSafely=" + this.canWithdrawSafely + ", immediateWithdrawalFeeTaken=" + this.immediateWithdrawalFeeTaken + ", safeWithdrawalFeeTaken=" + this.safeWithdrawalFeeTaken + ", neededAllowanceForDeposit=" + this.neededAllowanceForDeposit + ')';
    }

    public StakingRules(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.canDeposit = z;
        this.canWithdrawImmediately = z2;
        this.canWithdrawSafely = z3;
        this.immediateWithdrawalFeeTaken = z4;
        this.safeWithdrawalFeeTaken = z5;
        this.neededAllowanceForDeposit = z6;
    }

    public final boolean getCanDeposit() {
        return this.canDeposit;
    }

    public final boolean getCanWithdrawImmediately() {
        return this.canWithdrawImmediately;
    }

    public final boolean getCanWithdrawSafely() {
        return this.canWithdrawSafely;
    }

    public final boolean getImmediateWithdrawalFeeTaken() {
        return this.immediateWithdrawalFeeTaken;
    }

    public final boolean getSafeWithdrawalFeeTaken() {
        return this.safeWithdrawalFeeTaken;
    }

    public final boolean getNeededAllowanceForDeposit() {
        return this.neededAllowanceForDeposit;
    }
}
