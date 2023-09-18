package p033j$.time.format;
/* renamed from: j$.time.format.e */
/* loaded from: classes2.dex */
final class C2793e implements InterfaceC2795g {

    /* renamed from: a */
    private final char f580a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2793e(char c) {
        this.f580a = c;
    }

    public String toString() {
        if (this.f580a == '\'') {
            return "''";
        }
        return "'" + this.f580a + "'";
    }
}
