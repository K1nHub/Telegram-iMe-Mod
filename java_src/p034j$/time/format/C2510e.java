package p034j$.time.format;
/* renamed from: j$.time.format.e */
/* loaded from: classes2.dex */
final class C2510e implements InterfaceC2512g {

    /* renamed from: a */
    private final char f491a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2510e(char c) {
        this.f491a = c;
    }

    public String toString() {
        if (this.f491a == '\'') {
            return "''";
        }
        return "'" + this.f491a + "'";
    }
}
