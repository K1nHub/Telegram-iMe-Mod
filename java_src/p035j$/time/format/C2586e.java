package p035j$.time.format;
/* renamed from: j$.time.format.e */
/* loaded from: classes2.dex */
final class C2586e implements InterfaceC2588g {

    /* renamed from: a */
    private final char f496a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2586e(char c) {
        this.f496a = c;
    }

    public String toString() {
        if (this.f496a == '\'') {
            return "''";
        }
        return "'" + this.f496a + "'";
    }
}
