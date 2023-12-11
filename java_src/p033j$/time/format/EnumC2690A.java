package p033j$.time.format;
/* renamed from: j$.time.format.A */
/* loaded from: classes2.dex */
public enum EnumC2690A {
    NORMAL,
    ALWAYS,
    NEVER,
    NOT_NEGATIVE,
    EXCEEDS_PAD;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean m906a(boolean z, boolean z2, boolean z3) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return (z && z2) ? false : true;
        } else if (ordinal == 1 || ordinal == 4) {
            return true;
        } else {
            return (z2 || z3) ? false : true;
        }
    }
}
