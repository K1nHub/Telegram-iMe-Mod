package p034j$.time.format;
/* renamed from: j$.time.format.e */
/* loaded from: classes2.dex */
final class C2372e implements InterfaceC2374g {

    /* renamed from: a */
    private final char f485a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2372e(char c) {
        this.f485a = c;
    }

    public String toString() {
        if (this.f485a == '\'') {
            return "''";
        }
        return "'" + this.f485a + "'";
    }
}
