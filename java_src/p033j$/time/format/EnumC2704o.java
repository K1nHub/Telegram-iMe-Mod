package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.o */
/* loaded from: classes2.dex */
public enum EnumC2704o implements InterfaceC2697h {
    SENSITIVE,
    INSENSITIVE,
    STRICT,
    LENIENT;

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: a */
    public boolean mo886a(C2711v c2711v, StringBuilder sb) {
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2697h
    /* renamed from: b */
    public int mo885b(C2709t c2709t, CharSequence charSequence, int i) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            c2709t.m851l(true);
        } else if (ordinal == 1) {
            c2709t.m851l(false);
        } else if (ordinal == 2) {
            c2709t.m847p(true);
        } else if (ordinal == 3) {
            c2709t.m847p(false);
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
