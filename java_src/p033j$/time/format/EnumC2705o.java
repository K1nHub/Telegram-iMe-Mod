package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.o */
/* loaded from: classes2.dex */
public enum EnumC2705o implements InterfaceC2698h {
    SENSITIVE,
    INSENSITIVE,
    STRICT,
    LENIENT;

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: a */
    public boolean mo882a(C2712v c2712v, StringBuilder sb) {
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: b */
    public int mo881b(C2710t c2710t, CharSequence charSequence, int i) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            c2710t.m847l(true);
        } else if (ordinal == 1) {
            c2710t.m847l(false);
        } else if (ordinal == 2) {
            c2710t.m843p(true);
        } else if (ordinal == 3) {
            c2710t.m843p(false);
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
