package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.o */
/* loaded from: classes2.dex */
public enum EnumC2709o implements InterfaceC2702h {
    SENSITIVE,
    INSENSITIVE,
    STRICT,
    LENIENT;

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: a */
    public boolean mo883a(C2716v c2716v, StringBuilder sb) {
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: b */
    public int mo882b(C2714t c2714t, CharSequence charSequence, int i) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            c2714t.m848l(true);
        } else if (ordinal == 1) {
            c2714t.m848l(false);
        } else if (ordinal == 2) {
            c2714t.m844p(true);
        } else if (ordinal == 3) {
            c2714t.m844p(false);
        }
        return i;
    }

    @Override // java.lang.Enum
    public String toString() {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        return "ParseStrict(false)";
                    }
                    throw new IllegalStateException("Unreachable");
                }
                return "ParseStrict(true)";
            }
            return "ParseCaseSensitive(false)";
        }
        return "ParseCaseSensitive(true)";
    }
}
