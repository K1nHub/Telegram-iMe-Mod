package p033j$.time.format;
/* renamed from: j$.time.format.e */
/* loaded from: classes2.dex */
final class C2877e implements InterfaceC2879g {

    /* renamed from: a */
    private final char f589a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2877e(char c) {
        this.f589a = c;
    }

    public String toString() {
        if (this.f589a == '\'') {
            return "''";
        }
        return "'" + this.f589a + "'";
    }
}
