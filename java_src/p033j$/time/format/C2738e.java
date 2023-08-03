package p033j$.time.format;
/* renamed from: j$.time.format.e */
/* loaded from: classes2.dex */
final class C2738e implements InterfaceC2740g {

    /* renamed from: a */
    private final char f579a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2738e(char c) {
        this.f579a = c;
    }

    public String toString() {
        if (this.f579a == '\'') {
            return "''";
        }
        return "'" + this.f579a + "'";
    }
}
