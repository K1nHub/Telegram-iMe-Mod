package com.iMe.p032ui.pager;
/* compiled from: FragmentContextViewParams.kt */
/* renamed from: com.iMe.ui.pager.FragmentContextViewParams */
/* loaded from: classes3.dex */
public final class FragmentContextViewParams {
    private final boolean enabled;
    private final boolean supportsCalls;
    private final boolean supportsVoices;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FragmentContextViewParams) {
            FragmentContextViewParams fragmentContextViewParams = (FragmentContextViewParams) obj;
            return this.enabled == fragmentContextViewParams.enabled && this.supportsCalls == fragmentContextViewParams.supportsCalls && this.supportsVoices == fragmentContextViewParams.supportsVoices;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public int hashCode() {
        boolean z = this.enabled;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        ?? r2 = this.supportsCalls;
        int i2 = r2;
        if (r2 != 0) {
            i2 = 1;
        }
        int i3 = (i + i2) * 31;
        boolean z2 = this.supportsVoices;
        return i3 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "FragmentContextViewParams(enabled=" + this.enabled + ", supportsCalls=" + this.supportsCalls + ", supportsVoices=" + this.supportsVoices + ')';
    }

    public FragmentContextViewParams(boolean z, boolean z2, boolean z3) {
        this.enabled = z;
        this.supportsCalls = z2;
        this.supportsVoices = z3;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final boolean getSupportsCalls() {
        return this.supportsCalls;
    }

    public final boolean getSupportsVoices() {
        return this.supportsVoices;
    }
}
