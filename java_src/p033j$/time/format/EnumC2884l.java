package p033j$.time.format;
/* renamed from: j$.time.format.l */
/* loaded from: classes2.dex */
enum EnumC2884l implements InterfaceC2879g {
    SENSITIVE,
    INSENSITIVE,
    STRICT,
    LENIENT;

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
